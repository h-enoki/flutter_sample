import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';
import 'package:flutter_sample/src/routes/app_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: MyAppBar.withSettingsButton(
        "Home",
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint("onPressed menu");
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
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
