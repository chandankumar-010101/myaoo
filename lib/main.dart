import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_app_lock/flutter_app_lock.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:matrix/matrix.dart';
import 'package:pangea_choreographer/pangea_choreographer.dart';
import 'package:pangeachat/services/services.dart';

import 'package:universal_html/html.dart' as html;
import 'package:vrouter/vrouter.dart';
import 'package:pangeachat/config/routes.dart';
import 'package:pangeachat/utils/client_manager.dart';
import 'package:pangeachat/utils/platform_infos.dart';
import 'package:pangeachat/utils/sentry_controller.dart';
import 'config/app_config.dart';
import 'config/environment.dart';
import 'config/themes.dart';
import 'utils/background_push.dart';
import 'utils/custom_scroll_behaviour.dart';
import 'utils/localized_exception_extension.dart';
import 'utils/platform_infos.dart';
import 'widgets/lock_screen.dart';
import 'widgets/matrix.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

GoogleSignIn googleSignIn = GoogleSignIn(
  clientId: '466850640825-qegdiq3mpj3h5e0e79ud5hnnq2c22mi3.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    ClassroomApi.classroomCoursesScope,
    ClassroomApi.classroomCoursesReadonlyScope,
    ClassroomApi.classroomCourseworkStudentsScope,
    ClassroomApi.classroomCourseworkStudentsReadonlyScope,
    ClassroomApi.classroomRostersReadonlyScope,
    ClassroomApi.classroomRostersScope,
    ClassroomApi.classroomProfileEmailsScope,
    ClassroomApi.classroomProfilePhotosScope,
  ],
);

void main() async {
  await dotenv.load(fileName: Environment.fileName);
  await ChoreoController.initialize(flagBaseUrl: Environment.baseAPI, choreoBaseUrl: Environment.choreo_api);
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (FlutterErrorDetails details) => Zone.current.handleUncaughtError(
        details.exception,
        details.stack ?? StackTrace.current,
      );

  final clients = await ClientManager.getClients();
  Logs().level = kReleaseMode ? Level.warning : Level.verbose;

  if (PlatformInfos.isMobile) {
    BackgroundPush.clientOnly(clients.first);
  }

  final queryParameters = <String, String>{};
  if (kIsWeb) {
    queryParameters.addAll(Uri.parse(html.window.location.href).queryParameters);
  }

  runZonedGuarded(
    () => runApp(PlatformInfos.isMobile
        ? AppLock(
            builder: (args) => FluffyChatApp(
              clients: clients,
              queryParameters: queryParameters,
            ),
            lockScreen: const LockScreen(),
            enabled: false,
          )
        : FluffyChatApp(clients: clients, queryParameters: queryParameters)),
    SentryController.captureException,
  );

  await PangeaServices.accessTokenStatus();
}

class FluffyChatApp extends StatefulWidget {
  final Widget? testWidget;
  final List<Client> clients;
  final Map<String, String>? queryParameters;

  const FluffyChatApp({
    Key? key,
    this.testWidget,
    required this.clients,
    this.queryParameters,
  }) : super(key: key);

  /// getInitialLink may rereturn the value multiple times if this view is
  /// opened multiple times for example if the user logs out after they logged
  /// in with qr code or magic link.
  static bool gotInitialLink = false;

  @override
  _FluffyChatAppState createState() => _FluffyChatAppState();
}

class _FluffyChatAppState extends State<FluffyChatApp> {
  GlobalKey<VRouterState>? _router;
  bool? columnMode;
  String? _initialUrl;

  @override
  void initState() {
    super.initState();
    _initialUrl = widget.clients.any((client) => client.isLogged()) ? '/rooms' : '/home';
  }

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (lightColorScheme, darkColorScheme) => AdaptiveTheme(
              light: FluffyThemes.light(lightColorScheme),
              dark: FluffyThemes.dark(darkColorScheme),
              initial: AdaptiveThemeMode.system,
              builder: (theme, darkTheme) => LayoutBuilder(
                builder: (context, constraints) {
                  const maxColumns = 3;
                  var newColumns = (constraints.maxWidth / FluffyThemes.columnWidth).floor();
                  if (newColumns > maxColumns) newColumns = maxColumns;
                  columnMode ??= newColumns > 1;
                  _router ??= GlobalKey<VRouterState>();
                  if (columnMode != newColumns > 1) {
                    Logs().v('Set Column Mode = $columnMode');
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {
                        _initialUrl = _router?.currentState?.url;
                        columnMode = newColumns > 1;
                        _router = GlobalKey<VRouterState>();
                      });
                    });
                  }
                  return VRouter(
                    key: _router,
                    title: AppConfig.applicationName,
                    theme: theme,
                    scrollBehavior: CustomScrollBehavior(),
                    logs: kReleaseMode ? VLogs.none : VLogs.info,
                    darkTheme: darkTheme,
                    localizationsDelegates: const [
                      ...L10n.localizationsDelegates,
                    ],
                    supportedLocales: L10n.supportedLocales,
                    initialUrl: _initialUrl ?? '/',
                    routes: AppRoutes(columnMode ?? false).routes,
                    builder: (context, child) {
                      LoadingDialog.defaultTitle = L10n.of(context)!.loadingPleaseWait;
                      LoadingDialog.defaultBackLabel = L10n.of(context)!.close;
                      LoadingDialog.defaultOnError = (e) => (e as Object?)!.toLocalizedString(context);
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        SystemChrome.setSystemUIOverlayStyle(
                          SystemUiOverlayStyle(
                            statusBarColor: Colors.transparent,
                            systemNavigationBarColor: Theme.of(context).appBarTheme.backgroundColor,
                            systemNavigationBarIconBrightness: Theme.of(context).brightness == Brightness.light ? Brightness.dark : Brightness.light,
                          ),
                        );
                      });
                      return Matrix(
                        context: context,
                        router: _router,
                        clients: widget.clients,
                        child: child,
                      );
                    },
                  );
                },
              ),
            ));
  }
}
