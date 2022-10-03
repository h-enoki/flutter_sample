import 'package:flutter/material.dart';
import 'package:flutter_sample/src/routes/app_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
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
      _myListTile(context, AppRoutes.expanded),
      _myListTile(context, AppRoutes.wrap),
      _myListTile(context, AppRoutes.stack),
      _myListTile(context, AppRoutes.column),
      _myListTile(context, AppRoutes.row),
      _myListTile(context, AppRoutes.container),
      _myListTile(context, AppRoutes.listView),
      _myListTile(context, AppRoutes.statelesswidget),
      _myListTile(context, AppRoutes.statefulwidget),
      _myListTile(context, AppRoutes.hoge),
    ];
  }

  Widget _myListTile(BuildContext context, String appRoutes) {
    return ListTile(
      leading: const Icon(Icons.settings),
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
