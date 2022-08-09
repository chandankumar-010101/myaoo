import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:future_loading_dialog/future_loading_dialog.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/utils/api/user_details_api.dart';
import 'package:vrouter/vrouter.dart';
import 'package:pangeachat/pages/chat_list/chat_list_item.dart';
import 'package:pangeachat/utils/string_extension.dart';
import 'package:pangeachat/widgets/avatar.dart';
import 'package:pangeachat/widgets/contacts_list.dart';
import 'package:pangeachat/widgets/matrix.dart';
import '../../utils/platform_infos.dart';
import 'search.dart';

class SearchView extends StatelessWidget {
  final SearchController controller;

  SearchView(this.controller, {Key? key}) : super(key: key);
  var box=GetStorage();

  userAgeDetails()async{
   await UserDetails().userAge();

  }

  @override
  Widget build(BuildContext context) {

    userAgeDetails();
    int age=int.parse(box.read("age").toString());
    print("age is ${box.read("age")}");
    print("userType is ${box.read("usertype")}");
    final server = controller.genericSearchTerm?.isValidMatrixId ?? false
        ? controller.genericSearchTerm!.domain
        : controller.server;
    if (controller.lastServer != server) {
      controller.lastServer = server;
      controller.publicRoomsResponse = null;
    }
    controller.publicRoomsResponse ??= Matrix.of(context)
        .client
        .queryPublicRooms(
          server: server,
          filter: PublicRoomQueryFilter(
            genericSearchTerm: controller.genericSearchTerm,
          ),
        )
        .catchError((error) {
      if (!(controller.genericSearchTerm?.isValidMatrixId ?? false)) {
        throw error;
      }
      return QueryPublicRoomsResponse.fromJson({
        'chunk': [],
      });
    }).then((QueryPublicRoomsResponse res) {
      final genericSearchTerm = controller.genericSearchTerm;
      if (genericSearchTerm != null &&
          !res.chunk.any(
              (room) => room.canonicalAlias == controller.genericSearchTerm)) {
        // we have to tack on the original alias
        res.chunk.add(
          PublicRoomsChunk(
            name: genericSearchTerm,
            numJoinedMembers: 0,
            roomId: '!unknown',
            worldReadable: true,
            guestCanJoin: true,
          ),
        );
      }
      return res;
    });

    final rooms = List<Room>.from(Matrix.of(context).client.rooms);
    rooms.removeWhere(
      (room) =>
          room.lastEvent == null ||
          !room.displayname.toLowerCase().removeDiacritics().contains(
              controller.controller.text.toLowerCase().removeDiacritics()),
    );
    const tabCount = 3;
    return DefaultTabController(
      length: tabCount,
      initialIndex: controller.controller.text.startsWith('#') ? 0 : 1,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          titleSpacing: 0,
          title: TextField(
            autofocus: true,
            controller: controller.controller,
            decoration: InputDecoration(
              suffix: const Icon(Icons.search_outlined),
              hintText: L10n.of(context)!.search,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            onChanged: controller.search,
          ),
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.secondary,
            labelColor: Theme.of(context).colorScheme.secondary,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText1!.color,

            labelStyle: const TextStyle(fontSize: 16),
            labelPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 0,
            ),
            tabs: [
              Tab(child: Text(L10n.of(context)!.discover, maxLines: 1)),
              Tab(child: Text(L10n.of(context)!.chats, maxLines: 1)),
              Tab(child: Text(L10n.of(context)!.people, maxLines: 1)),
            ],

          ),
        ),
        body: TabBarView(
          children: [
           age>=18?
            SingleChildScrollView(
              child: Column(
                children:   [
                  const SizedBox(height: 50,),
                   Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Pangea Chat serves schools and other learning communities,ages 13 and up, around the world. In order to protect our young learners, we ask our users to verify their age before connecting to our community. Before you can search Pangea Chat for classes, rooms, and new friends, you must verify you are 18 or older.",
                      style: TextStyle().copyWith(
                          color:Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 16),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 16,),
                  GestureDetector(
                    onTap: (){

                        VRouter.of(context).to('/search/add');

                    },
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                        child: Padding(
                          padding:const EdgeInsets
                              .symmetric(
                              horizontal: 42,
                              vertical: 6),
                          child: Text(
                            "Verify my account",
                            style: TextStyle().copyWith(
                                color:Theme.of(context).textTheme.bodyText1!.color,
                                fontSize: 16),
                          ),
                        )
                    ),
                  ),
                  const SizedBox(height: 134,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 42,
                              vertical: 6),
                          child: Text(
                            "Invite your friends",
                            style: TextStyle().copyWith(
                                color:Theme.of(context).textTheme.bodyText1!.color,
                                fontSize: 16),
                          ),
                        )
                    ),
                  ),
                  const SizedBox(height: 19,),
                  box.read("usertype")==1? GestureDetector(
                    onTap: (){},
                    child: Container(

                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        child: Padding(
                          padding: EdgeInsets
                              .symmetric(
                              horizontal: 42,
                              vertical: 6),
                          child: Text(
                            "Join with a class code",
                            style: TextStyle().copyWith(
                                color:Theme.of(context).textTheme.bodyText1!.color,
                                fontSize: 16),
                          ),
                        )
                    ),
                  ):Container(),
                  const SizedBox(height: 19,),
                  box.read("usertype")==2?GestureDetector(
                  onTap: (){},
                  child: Container(

                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.circular(10),
                        color:Theme.of(context).colorScheme.onPrimary ,
                      ),
                      child: Padding(
                        padding: const EdgeInsets
                            .symmetric(
                            horizontal: 42,
                            vertical: 6),
                        child: Text(
                          "Create a class",
                          style: TextStyle().copyWith(
                              color:Theme.of(context).textTheme.bodyText1!.color,
                              fontSize: 16),
                        ),
                      )
                  ),
                ):Container() ,


                  // ListView(
                  //   keyboardDismissBehavior: PlatformInfos.isIOS
                  //       ? ScrollViewKeyboardDismissBehavior.onDrag
                  //       : ScrollViewKeyboardDismissBehavior.manual,
                  //   children: [
                  //     const SizedBox(height: 12),
                  //
                  //     // ListTile(
                  //     //   leading: CircleAvatar(
                  //     //     foregroundColor: Theme.of(context).colorScheme.secondary,
                  //     //     backgroundColor: Theme.of(context).secondaryHeaderColor,
                  //     //     child: const Icon(Icons.edit_outlined),
                  //     //   ),
                  //     //   title: Text(L10n.of(context)!.changeTheServer),
                  //     //   onTap: controller.setServer,
                  //     // ),
                  //     FutureBuilder<QueryPublicRoomsResponse>(
                  //         future: controller.publicRoomsResponse,
                  //         builder: (BuildContext context,
                  //             AsyncSnapshot<QueryPublicRoomsResponse> snapshot) {
                  //           if (snapshot.hasError) {
                  //             return Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 const SizedBox(height: 32),
                  //                 const Icon(
                  //                   Icons.error_outlined,
                  //                   size: 80,
                  //                   color: Colors.grey,
                  //                 ),
                  //                 Center(
                  //                   child: Text(
                  //                     snapshot.error!.toLocalizedString(context),
                  //                     textAlign: TextAlign.center,
                  //                     style: const TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             );
                  //           }
                  //           if (snapshot.connectionState != ConnectionState.done) {
                  //             return const Center(
                  //                 child: CircularProgressIndicator.adaptive(
                  //                     strokeWidth: 2));
                  //           }
                  //           final publicRoomsResponse = snapshot.data!;
                  //           if (publicRoomsResponse.chunk.isEmpty) {
                  //             return Column(
                  //               mainAxisSize: MainAxisSize.min,
                  //               children: [
                  //                 const SizedBox(height: 32),
                  //                 const Icon(
                  //                   Icons.search_outlined,
                  //                   size: 80,
                  //                   color: Colors.grey,
                  //                 ),
                  //                 Center(
                  //                   child: Text(
                  //                     L10n.of(context)!.noPublicRoomsFound,
                  //                     textAlign: TextAlign.center,
                  //                     style: const TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             );
                  //           }
                  //           return GridView.builder(
                  //             shrinkWrap: true,
                  //             padding: const EdgeInsets.all(12),
                  //             physics: const NeverScrollableScrollPhysics(),
                  //             gridDelegate:
                  //                 const SliverGridDelegateWithFixedCrossAxisCount(
                  //               crossAxisCount: 2,
                  //               childAspectRatio: 1,
                  //               crossAxisSpacing: 16,
                  //               mainAxisSpacing: 16,
                  //             ),
                  //             itemCount: publicRoomsResponse.chunk.length,
                  //             itemBuilder: (BuildContext context, int i) => Material(
                  //               elevation: 2,
                  //               borderRadius: BorderRadius.circular(16),
                  //               child: InkWell(
                  //                 onTap: () => controller.joinGroupAction(
                  //                   publicRoomsResponse.chunk[i],
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(16),
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Column(
                  //                     mainAxisSize: MainAxisSize.min,
                  //                     children: [
                  //                       Avatar(
                  //                         mxContent:
                  //                             publicRoomsResponse.chunk[i].avatarUrl,
                  //                         name: publicRoomsResponse.chunk[i].name,
                  //                       ),
                  //                       Text(
                  //                         publicRoomsResponse.chunk[i].name!,
                  //                         style: const TextStyle(
                  //                           fontSize: 16,
                  //                           fontWeight: FontWeight.bold,
                  //                         ),
                  //                         maxLines: 1,
                  //                         textAlign: TextAlign.center,
                  //                       ),
                  //                       Text(
                  //                         L10n.of(context)!.countParticipants(
                  //                             publicRoomsResponse
                  //                                 .chunk[i].numJoinedMembers),
                  //                         style: const TextStyle(fontSize: 10.5),
                  //                         maxLines: 1,
                  //                         textAlign: TextAlign.center,
                  //                       ),
                  //                       Expanded(
                  //                         child: Text(
                  //                           publicRoomsResponse.chunk[i].topic ??
                  //                               L10n.of(context)!.noDescription,
                  //                           maxLines: 4,
                  //                           textAlign: TextAlign.center,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         }),
                  //   ],
                  // ),

                ],
              ),
            ):Container(),
            ListView.builder(
              keyboardDismissBehavior: PlatformInfos.isIOS
                  ? ScrollViewKeyboardDismissBehavior.onDrag
                  : ScrollViewKeyboardDismissBehavior.manual,
              itemCount: rooms.length,
              itemBuilder: (_, i) => ChatListItem(rooms[i]),
            ),
            controller.foundProfiles.isNotEmpty ? ListView.builder(
                    keyboardDismissBehavior: PlatformInfos.isIOS
                        ? ScrollViewKeyboardDismissBehavior.onDrag
                        : ScrollViewKeyboardDismissBehavior.manual,
                    itemCount: controller.foundProfiles.length,
                    itemBuilder: (BuildContext context, int i) {
                      final foundProfile = controller.foundProfiles[i];
                      return ListTile(
                        onTap: () async {
                          final roomID = await showFutureLoadingDialog(
                            context: context,
                            future: () async {
                              final client = Matrix.of(context).client;
                              final roomId = await client
                                  .startDirectChat(foundProfile.userId);
                              return roomId;
                            },
                          );
                          if (roomID.error == null) {
                            VRouter.of(context)
                                .toSegments(['rooms', roomID.result!]);
                          }
                        },
                        leading: Avatar(
                          mxContent: foundProfile.avatarUrl,
                          name: foundProfile.displayName ?? foundProfile.userId,
                          //size: 24,
                        ),
                        title: Text(
                          foundProfile.displayName ??
                              foundProfile.userId.localpart!,
                          style: const TextStyle(),
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          foundProfile.userId,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
                  ) : ContactsList(searchController: controller.controller),
          ],
        ),
      ),
    );
  }
}
