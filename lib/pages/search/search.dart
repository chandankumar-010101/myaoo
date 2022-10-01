import 'dart:async';

import 'package:flutter/material.dart';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:get/get.dart';
import 'package:matrix/matrix.dart';
import 'package:pangeachat/controllers/controllers.dart';
import 'package:pangeachat/pages/search/search_view_controller.dart';
import 'package:vrouter/vrouter.dart';

import 'package:pangeachat/utils/famedlysdk_store.dart';
import 'package:pangeachat/widgets/matrix.dart';
import 'package:pangeachat/widgets/public_room_bottom_sheet.dart';
import '../../services/services.dart';
import 'search_view.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  SearchController createState() => SearchController();
}

class SearchController extends State<Search> {
  Future<QueryPublicRoomsResponse>? publicRoomsResponse;
  String? lastServer;

  String? genericSearchTerm;

  Timer? timerForDelay;
  SearchViewController searchViewController =
  Get.put(SearchViewController());

  onChangeHandler(value,int currentIndex) {
   if (timerForDelay != null) {
      setState(() => timerForDelay!.cancel()); // clear timer
    }
    setState(() => timerForDelay = Timer(const Duration(milliseconds:800), (){
      if(value.length ==0 && currentIndex ==0){
        searchViewController.loading.value = true;
        PangeaServices.searchClass(value);
      }else{
        if(value.length > 2){
          if(currentIndex ==1){
            search(value);
          }if(currentIndex ==0){
            searchViewController.loading.value = true;
            PangeaServices.searchClass(value);
          }
        }
      }




    }));
  }
  search(String query) async {

    setState(() {
      genericSearchTerm = query;
      publicRoomsResponse = null;
    });

    try {
      final response = await Matrix.of(context).client.searchUserDirectory(query, limit: searchUserDirectoryLimit);
      foundProfiles = List<Profile>.from(response.results ?? []);
      if (foundProfiles.isEmpty && query.isValidMatrixId && query.sigil == '@') {
        foundProfiles.add(Profile.fromJson({'displayname': query.localpart,'user_id': query}));
      }
    } catch (e) {
      PangeaControllers.toastMsg(msg: "Error $e");
    }

    setState(() {});

  }

  void joinGroupAction(PublicRoomsChunk room) {
    showModalBottomSheet(
      context: context,
      builder: (c) => PublicRoomBottomSheet(
        roomAlias: room.canonicalAlias ?? room.roomId,
        outerContext: context,
        chunk: room,
      ),
    );
  }

  String? server;

  static const String _serverStoreNamespace = 'im.fluffychat.search.server';

  void setServer() async {
    final newServer = await showTextInputDialog(
        useRootNavigator: false,
        title: L10n.of(context)!.changeTheHomeserver,
        context: context,
        okLabel: L10n.of(context)!.ok,
        cancelLabel: L10n.of(context)!.cancel,
        textFields: [
          DialogTextField(
              prefixText: 'https://',
              hintText: Matrix.of(context).client.homeserver?.host,
              initialText: server,
              keyboardType: TextInputType.url,
              autocorrect: false)
        ]);
    if (newServer == null) return;
    Store().setItem(_serverStoreNamespace, newServer.single);
    setState(() {
      server = newServer.single;
    });
  }

  String? currentSearchTerm;
  List<Profile> foundProfiles = [];

  static const searchUserDirectoryLimit = 10;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
     searchViewController.searchTextController.value.text = VRouter.of(context).queryParameters['query'] ?? '';
      final server = await Store().getItem(_serverStoreNamespace);
      if (server?.isNotEmpty ?? false) {
        this.server = server;
      }
      search( searchViewController.searchTextController.value.text);
    });
  }

  @override
  Widget build(BuildContext context) => SearchView(this);
}
