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
import 'package:pangeachat/pages/new_class/class_permissions.dart';
import 'package:pangeachat/pages/new_class/exchange_class.dart';
import 'package:pangeachat/pages/new_class/invite_students.dart';
import 'package:pangeachat/pages/new_class/language_selection.dart';
import 'package:pangeachat/pages/new_class/student_permissions.dart';
import 'package:pangeachat/pages/new_group/new_group.dart';
import 'package:pangeachat/pages/new_private_chat/new_private_chat.dart';
import 'package:pangeachat/pages/request_screen/request_screen_view.dart';
import 'package:pangeachat/pages/request_to_enroll/request_to_enroll.dart';
import 'package:pangeachat/pages/search/invite_screen.dart';
import 'package:pangeachat/pages/search/search.dart';
import 'package:pangeachat/pages/search/search_discover.dart';
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

import '../home_page.dart';
import '../pages/language_selection_screen/language_selection.dart';
import '../pages/new_class/new_class.dart';

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
                path: '/newclass',
                widget: const NewClass(),
                stackedRoutes: [
                  VWidget(
                    path: 'class_permissions',
                    widget: const LogViewer(),
                    buildTransition: _dynamicTransition,
                  ),
                  VWidget(
                    path: 'language',
                    widget: const ClassLanguage(),
                    buildTransition: _dynamicTransition,
                  ),
                  VWidget(
                    path: '/students_permissions',
                    widget: const LogViewer(),
                    buildTransition: _dynamicTransition,
                  ),
                ]),
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
                  widget: ChatDetails(),
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
                //Todo classDetails
                VWidget(
                  path: '/classDetails',
                  widget: RequestScreenView(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: [
                    VWidget(
                      path: 'update_language',
                      widget: const ClassLanguage(),
                      buildTransition: _dynamicTransition,
                    ),
                    VWidget(
                      path: 'update_class_permissions',
                      widget: const ClassPermissions(),
                      buildTransition: _dynamicTransition,
                    ),
                    VWidget(
                      path: 'update_student_permissions',
                      widget: const StudentPermissions(),
                      buildTransition: _dynamicTransition,
                    ),
                    VWidget(
                      path: 'exchange_class',
                      widget: const ExchangeClass(),
                      buildTransition: _dynamicTransition,
                    ),
                  ],
                ),

                VWidget(
                    path: '/newclass',
                    widget: const NewClass(),
                    buildTransition: _fadeTransition,
                    stackedRoutes: [
                      VWidget(
                        path: 'language',
                        widget: const ClassLanguage(),
                        buildTransition: _dynamicTransition,
                      ),
                      VWidget(
                        path: 'class_permissions',
                        widget: const ClassPermissions(),
                        buildTransition: _dynamicTransition,
                      ),
                      VWidget(
                        path: 'student_permissions',
                        widget: const StudentPermissions(),
                        buildTransition: _dynamicTransition,
                      ),
                    ]),
                VWidget(
                  path: '/invite_students',
                  widget: const InviteStudent(),
                  buildTransition: _dynamicTransition,
                ),
                VWidget(
                  path: '/request_to_enroll',
                  widget: RequestToEnroll(),
                )
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
            VNester(
              path: '/search',
              widgetBuilder: (child) => TwoColumnLayout(
                mainView: const Search(),
                sideView: child,
              ),
              buildTransition: _dynamicTransition,
              stackedRoutes: [
                VWidget(
                  path: 'add',
                  widget: EmptyPage(),
                  buildTransition: _fadeTransition,
                  stackedRoutes: [
                    VWidget(
                      path: 'age',
                      widget: SearchDiscoverView(),
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
                            path: 'class_analytics',
                            widget: const SignupPage(),
                            buildTransition: _fadeTransition,
                          ),
                        ]),
                  ],
                ),
              ],
              nestedRoutes: [
                VWidget(
                  path: '',
                  widget: EmptyPage(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: _settingsRoutes,
                ),
                VWidget(
                  path: '/user',
                  widget: SearchDiscoverView(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: _settingsRoutes,
                ),
                VWidget(
                  path: '/newClass',
                  widget: NewClass(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: _settingsRoutes,
                ),
                VWidget(
                  path: '/inviteScreen',
                  widget: InviteScreen(),
                  buildTransition: _dynamicTransition,
                  stackedRoutes: _settingsRoutes,
                ),
              ],
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

      ];

  List<VRouteElement> get _homeRoutes => [
        VWidget(path: '/', widget: const LoadingView()),
        VWidget(
          path: '/home', widget: const HomeserverPicker(),
          //widget: const RequestToEnroll(),
          buildTransition: _fadeTransition,
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
