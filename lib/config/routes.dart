import 'package:flutter/material.dart';
import 'package:pangeachat/pages/add_story/add_story.dart';
import 'package:pangeachat/pages/archive/archive.dart';
import 'package:pangeachat/pages/chat/chat.dart';
import 'package:pangeachat/pages/chat_details/chat_details.dart';
import 'package:pangeachat/pages/chat_encryption_settings/chat_encryption_settings.dart';
import 'package:pangeachat/pages/chat_list/chat_list.dart';
import 'package:pangeachat/pages/chat_permissions_settings/chat_permissions_settings.dart';
import 'package:pangeachat/pages/connect/connect_page.dart';
import 'package:pangeachat/pages/device_settings/device_settings.dart';
import 'package:pangeachat/pages/homeserver_picker/homeserver_picker.dart';
import 'package:pangeachat/pages/invitation_selection/invitation_selection.dart';
import 'package:pangeachat/pages/login/login.dart';
import 'package:pangeachat/pages/new_group/new_group.dart';
import 'package:pangeachat/pages/new_private_chat/new_private_chat.dart';
import 'package:pangeachat/pages/new_space/welcome_new_space.dart';
import 'package:pangeachat/pages/request_screen/request_screen_view.dart';
import 'package:pangeachat/pages/search/search.dart';
import 'package:pangeachat/pages/settings/settings.dart';
import 'package:pangeachat/pages/settings_3pid/settings_3pid.dart';
import 'package:pangeachat/pages/settings_account/settings_account.dart';
import 'package:pangeachat/pages/settings_chat/settings_chat.dart';
import 'package:pangeachat/pages/settings_emotes/settings_emotes.dart';
import 'package:pangeachat/pages/settings_ignore_list/settings_ignore_list.dart';
import 'package:pangeachat/pages/settings_multiple_emotes/settings_multiple_emotes.dart';
import 'package:pangeachat/pages/settings_notifications/settings_notifications.dart';
import 'package:pangeachat/pages/settings_security/settings_security.dart';
import 'package:pangeachat/pages/settings_stories/settings_stories.dart';
import 'package:pangeachat/pages/settings_style/settings_style.dart';
import 'package:pangeachat/pages/sign_up/signup.dart';
import 'package:pangeachat/pages/story/story_page.dart';
import 'package:pangeachat/widgets/layouts/empty_page.dart';
import 'package:pangeachat/widgets/layouts/loading_view.dart';
import 'package:pangeachat/widgets/layouts/side_view_layout.dart';
import 'package:pangeachat/widgets/layouts/two_column_layout.dart';
import 'package:pangeachat/widgets/log_view.dart';
import 'package:vrouter/vrouter.dart';

import '../pages/language_selection_screen/language_selection.dart';

class AppRoutes {
  final bool columnMode;

  AppRoutes(this.columnMode);

  List<VRouteElement> get routes => [
        ..._homeRoutes,
        if (columnMode) ..._tabletRoutes,
        if (!columnMode) ..._mobileRoutes,
      ];

  List<VRouteElement> get _mobileRoutes => [
        VWidget(
          path: '/rooms',
          widget: const ChatList(),
          stackedRoutes: [
            VWidget(
              path: '/stories/create',
              widget: const AddStoryPage(),
            ),
            VWidget(
              path: '/stories/:roomid',
              widget: const StoryPage(),
              stackedRoutes: [
                VWidget(
                  path: 'share',
                  widget: const AddStoryPage(),
                ),
              ],
            ),
            VWidget(
              path: '/classes/:roomid',
              widget: const ChatDetails(),
              stackedRoutes: _chatDetailsRoutes,
            ),
            VWidget(path: ':roomid', widget: const Chat(), stackedRoutes: [
              VWidget(
                path: 'encryption',
                widget: const ChatEncryptionSettings(),
              ),
              VWidget(
                path: 'invite',
                widget: const InvitationSelection(),
              ),
              VWidget(
                path: 'details',
                widget: const ChatDetails(),
                stackedRoutes: _chatDetailsRoutes,
              ),
            ]),
            VWidget(
              path: '/settings',
              widget: const Settings(),
              stackedRoutes: _settingsRoutes,
            ),
            VWidget(
              path: '/search',
              widget: const Search(),
            ),
            VWidget(
              path: '/archive',
              widget: const Archive(),
            ),
            VWidget(
              path: '/newprivatechat',
              widget: const NewPrivateChat(),
            ),
            VWidget(
              path: '/newgroup',
              widget: const NewGroup(),
            ),
            VWidget(
              path: '/newspace',
              widget: const WelcomeNewSpace(),
            ),
          ],
        ),
      ];
  List<VRouteElement> get _tabletRoutes => [
        VNester(
          path: '/rooms',
          widgetBuilder: (child) => TwoColumnLayout(
            mainView: const ChatList(),
            sideView: child,
          ),
          buildTransition: _fadeTransition,
          nestedRoutes: [
            VWidget(
              path: '',
              widget: const EmptyPage(),
              buildTransition: _fadeTransition,
              stackedRoutes: [
                VWidget(
                  path: '/stories/create',
                  buildTransition: _fadeTransition,
                  widget: const AddStoryPage(),
                ),
                VWidget(
                  path: '/stories/:roomid',
                  buildTransition: _fadeTransition,
                  widget: const StoryPage(),
                  stackedRoutes: [
                    VWidget(
                      path: 'share',
                      widget: const AddStoryPage(),
                    ),
                  ],
                ),
                VWidget(
                  path: '/classes/:roomid',
                  widget: const ChatDetails(),
                  buildTransition: _fadeTransition,
                  stackedRoutes: _chatDetailsRoutes,
                ),
                VWidget(
                  path: '/newprivatechat',
                  widget: const NewPrivateChat(),
                  buildTransition: _fadeTransition,
                ),
                VWidget(
                  path: '/newgroup',
                  widget: const NewGroup(),
                  buildTransition: _fadeTransition,
                ),
                VWidget(
                  path: '/newspace',
                  widget: const WelcomeNewSpace(),
                  buildTransition: _fadeTransition,
                ),
                VNester(
                  path: ':roomid',
                  widgetBuilder: (child) => SideViewLayout(
                    mainView: const Chat(),
                    sideView: child,
                  ),
                  buildTransition: _fadeTransition,
                  nestedRoutes: [
                    VWidget(
                      path: '',
                      widget: const Chat(),
                      buildTransition: _fadeTransition,
                    ),
                    VWidget(
                      path: 'encryption',
                      widget: const ChatEncryptionSettings(),
                      buildTransition: _fadeTransition,
                    ),
                    VWidget(
                      path: 'details',
                      widget: const ChatDetails(),
                      buildTransition: _fadeTransition,
                      stackedRoutes: _chatDetailsRoutes,
                    ),
                    VWidget(
                      path: 'invite',
                      widget: const InvitationSelection(),
                      buildTransition: _fadeTransition,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        VWidget(
          path: '/rooms',
          widget: const TwoColumnLayout(
            mainView: ChatList(),
            sideView: EmptyPage(),
          ),
          buildTransition: _fadeTransition,
          stackedRoutes: [
            VNester(
              path: '/settings',
              widgetBuilder: (child) => TwoColumnLayout(
                mainView: const Settings(),
                sideView: child,
              ),
              buildTransition: _dynamicTransition,
              nestedRoutes: [
                VWidget(
                  path: '',
                  widget: const EmptyPage(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: _settingsRoutes,
                ),
              ],
            ),
            VWidget(
              path: '/search',
              widget: const TwoColumnLayout(
                mainView: Search(),
                sideView: EmptyPage(),
              ),
              buildTransition: _fadeTransition,
            ),
            VWidget(
              path: '/archive',
              widget: const TwoColumnLayout(
                mainView: Archive(),
                sideView: EmptyPage(),
              ),
              buildTransition: _fadeTransition,
            ),
          ],
        ),
        VWidget(
          path: '/lang',
          widget: LanguageSelection(),
        ),
        VWidget(
          path: '/request',
          widget: RequestScreenView(),
        ),
      ];

  List<VRouteElement> get _homeRoutes => [
        VWidget(path: '/', widget: const LoadingView()),
        VWidget(
          path: '/home',
          // widget: const HomePage(),
          widget: const HomeserverPicker(),
          // buildTransition: _fadeTransition,
          stackedRoutes: [
            VWidget(
              path: '/login',
              widget: const Login(),
              buildTransition: _fadeTransition,
            ),
            VWidget(
                path: 'connect',
                widget: const ConnectPage(),
                buildTransition: _fadeTransition,
                stackedRoutes: [
                  VWidget(
                    path: 'login',
                    widget: const Login(),
                    buildTransition: _fadeTransition,
                  ),
                  VWidget(
                    path: 'signup',
                    widget: const SignupPage(),
                    buildTransition: _fadeTransition,
                  ),
                  VWidget(
                    path: 'lang',
                    widget: LanguageSelection(),
                    buildTransition: _fadeTransition,
                  ),
                ]),
            VWidget(
              path: 'logs',
              widget: const LogViewer(),
              buildTransition: _dynamicTransition,
            ),
          ],
        ),
      ];

  List<VRouteElement> get _chatDetailsRoutes => [
        VWidget(
          path: 'permissions',
          widget: const ChatPermissionsSettings(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'invite',
          widget: const InvitationSelection(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'multiple_emotes',
          widget: const MultipleEmotesSettings(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'emotes',
          widget: const EmotesSettings(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'emotes/:state_key',
          widget: const EmotesSettings(),
          buildTransition: _dynamicTransition,
        ),
      ];

  List<VRouteElement> get _settingsRoutes => [
        VWidget(
          path: 'notifications',
          widget: const SettingsNotifications(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'style',
          widget: const SettingsStyle(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'devices',
          widget: const DevicesSettings(),
          buildTransition: _dynamicTransition,
        ),
        VWidget(
          path: 'chat',
          widget: const SettingsChat(),
          buildTransition: _dynamicTransition,
          stackedRoutes: [
            VWidget(
              path: 'emotes',
              widget: const EmotesSettings(),
              buildTransition: _dynamicTransition,
            ),
          ],
        ),
        VWidget(
          path: 'account',
          widget: const SettingsAccount(),
          buildTransition: _dynamicTransition,
          stackedRoutes: [
            VWidget(
              path: 'add',
              widget: const HomeserverPicker(),
              buildTransition: _fadeTransition,
              stackedRoutes: [
                VWidget(
                  path: 'login',
                  widget: const Login(),
                  buildTransition: _fadeTransition,
                ),
                VWidget(
                    path: 'connect',
                    widget: const ConnectPage(),
                    buildTransition: _fadeTransition,
                    stackedRoutes: [
                      VWidget(
                        path: 'login',
                        widget: const Login(),
                        buildTransition: _fadeTransition,
                      ),
                      VWidget(
                        path: 'signup',
                        widget: const SignupPage(),
                        buildTransition: _fadeTransition,
                      ),
                    ]),
              ],
            ),
          ],
        ),
        VWidget(
          path: 'security',
          widget: const SettingsSecurity(),
          buildTransition: _dynamicTransition,
          stackedRoutes: [
            VWidget(
              path: 'stories',
              widget: const SettingsStories(),
              buildTransition: _dynamicTransition,
            ),
            VWidget(
              path: 'ignorelist',
              widget: const SettingsIgnoreList(),
              buildTransition: _dynamicTransition,
            ),
            VWidget(
              path: '3pid',
              widget: const Settings3Pid(),
              buildTransition: _dynamicTransition,
            ),
          ],
        ),
        VWidget(
          path: 'logs',
          widget: const LogViewer(),
          buildTransition: _dynamicTransition,
        ),
      ];

  FadeTransition Function(dynamic, dynamic, dynamic)? get _dynamicTransition =>
      columnMode ? _fadeTransition : null;

  FadeTransition _fadeTransition(animation1, _, child) =>
      FadeTransition(opacity: animation1, child: child);
}
