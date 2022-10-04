import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);
    final expandedItems = _expandedItems(context);

    return Scaffold(
      appBar: const MyAppBar("ExpandedPage"),
      body: Container(
        color: Colors.grey,
        height: 300,
        width: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: expandedItems,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myContainer(context, Icons.favorite, Colors.blueGrey),
      _myContainer(context, Icons.star, Colors.indigo),
      _myContainer(context, Icons.wallet, Colors.deepPurple),
    ];
  }

  List<Widget> _expandedItems(BuildContext context) {
    return [
      Expanded(
        flex: 1,
        child: _myContainer(context, Icons.favorite, Colors.blueGrey),
      ),
      Expanded(
        flex: 2,
        child: _myContainer(context, Icons.star, Colors.indigo),
      ),
      Expanded(
        flex: 3,
        child: _myContainer(context, Icons.wallet, Colors.deepPurple),
      ),
    ];
  }

  Widget _myContainer(BuildContext context, IconData icon, Color color) {
    return Container(
      color: color,
      height: 60,
      width: 60,
      alignment: const Alignment(0.0, 0.0),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
