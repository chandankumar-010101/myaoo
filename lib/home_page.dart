import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pangeachat/config/app_config.dart';
import 'package:pangeachat/widgets/layouts/login_scaffold.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:vrouter/vrouter.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const flagsPath = "assets/countryFlags/";
  static const countries = ["zh.svg", "tk.svg","td.svg", "de.svg", "us.svg", "ko.svg", "ve.svg", "pl.svg", "mv.svg", "no.svg"];
  // static const countries = ["zh.svg", "en.svg","td.svg", "de.svg", "ja.svg", "ko.svg"];

  @override
  Widget build(BuildContext context) {
    // Matrix.of(context).navigatorContext = context;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    });
    return Scaffold(
      appBar: VRouter.of(context).path == '/home'
          ? null
          : AppBar(title: Text(L10n.of(context)!.addAccount)),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/newAssets/home_wallpaper.png',
            ),
          ),
        ),
        alignment: Alignment.center,
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 700),
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((BuildContext context, int index) {
                      final String fullFlagPath = flagsPath + countries[index];
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Center(
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.transparent,
                            child: ClipRRect(
                              child: SvgPicture.asset(fullFlagPath, fit: BoxFit.contain,),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      );
                    }),
                    itemCount: countries.length,
                  ),
                ),
              ),
              // ConstrainedBox(
              //   constraints: const BoxConstraints(maxWidth: 480),
              //   child: ,
              // ),
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 480),
                  child: Padding(
                    padding: const EdgeInsets.only(top:60),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Image.asset('assets/newAssets/pangea-bare.png'),
                            ),
                            Column(
                              children:  [
                                Text(AppConfig.applicationName,
                                    style: const TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)),
                                const Text("Life is Learning",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic))
                              ],
                            )
                          ],
                        ),
                        // Wrap(
                        //   alignment: WrapAlignment.center,
                        //   children: [
                        //     TextButton(
                        //       onPressed: () {},
                        //       child: Text(
                        //         L10n.of(context)!.privacy,
                        //         style: const TextStyle(
                        //           decoration: TextDecoration.underline,
                        //           color: Colors.white,
                        //         ),
                        //       ),
                        //     ),
                        //     TextButton(
                        //       onPressed: () => {},
                        //       child: Text(
                        //         L10n.of(context)!.about,
                        //         style: const TextStyle(
                        //           decoration: TextDecoration.underline,
                        //           color: Colors.white,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Hero(
                    tag: 'Start',
                    child: ElevatedButton(
                      onPressed: () {VRouter.of(context).to('serverPicker');},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: const BorderSide(width: 2, color: Colors.white)

                          // shadowColor: Colors.white,
                          ),
                        // style:ButtonStyle(
                        //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        //         RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(18.0),
                        //             side: BorderSide(color: Colors.red)
                        //         )
                        //     )
                        // ),
                      child: const Text("START", style: TextStyle(fontWeight: FontWeight.w700),),
                      // child: Text(L10n.of(context)!.start),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
