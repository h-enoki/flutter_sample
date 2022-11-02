import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';
import 'package:flutter_sample/src/components/my_drawer.dart';
import 'package:flutter_sample/src/routes/app_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar.withSettingsButton(
        "Home",
        onSettingsPressed: () => scaffoldKey.currentState!.openEndDrawer(),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint("onPressed menu");
          },
        ),
      ),
      endDrawer: const MyDrawer(),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (_, index) {
          return items[index];
        },
        separatorBuilder: (_, index) {
          return Container(color: Colors.grey, height: 1.0);
        },
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myListTile(context, AppRoutes.hoge),
      _myListTile(context, AppRoutes.flutterKeyboardVisibilityPage),
      _myListTile(context, AppRoutes.cachedNetworkImagePage),
      _myListTile(context, AppRoutes.imageGallerySaverPage),
      _myListTile(context, AppRoutes.secureStoragePage),
      _myListTile(context, AppRoutes.webView),
      _myListTile(context, AppRoutes.sharedPreferences),
      _myListTile(context, AppRoutes.dioPage),
      _myListTile(context, AppRoutes.combinningProviderPage),
      _myListTile(context, AppRoutes.streamProvider),
      _myListTile(context, AppRoutes.futureProvider),
      _myListTile(context, AppRoutes.stateNotifierProvider),
      _myListTile(context, AppRoutes.stateProvider),
      _myListTile(context, AppRoutes.provider),
      _myListTile(context, AppRoutes.rivderpod),
      _myListTile(context, AppRoutes.async),
      _myListTile(context, AppRoutes.progressIndicator),
      _myListTile(context, AppRoutes.gridView),
      _myListTile(context, AppRoutes.singleChildScrollView),
      _myListTile(context, AppRoutes.image),
      _myListTile(context, AppRoutes.dialogs),
      _myListTile(context, AppRoutes.bottomNavigationBar),
      _myListTile(context, AppRoutes.padding),
      _myListTile(context, AppRoutes.align),
      _myListTile(context, AppRoutes.center),
      _myListTile(context, AppRoutes.layoutBuilder),
      _myListTile(context, AppRoutes.flexible),
      _myListTile(context, AppRoutes.expanded),
      _myListTile(context, AppRoutes.wrap),
      _myListTile(context, AppRoutes.stack),
      _myListTile(context, AppRoutes.column),
      _myListTile(context, AppRoutes.row),
      _myListTile(context, AppRoutes.container),
      _myListTile(context, AppRoutes.listView),
      _myListTile(context, AppRoutes.statelessWidget),
      _myListTile(context, AppRoutes.statefulWidget),
    ];
  }

  Widget _myListTile(BuildContext context, String appRoutes) {
    return ListTile(
      leading: const Icon(Icons.star),
      title: Text(
        appRoutes,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => Navigator.pushNamed(context, appRoutes),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
      ),
    );
  }
}
