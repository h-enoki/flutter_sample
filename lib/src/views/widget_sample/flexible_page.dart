import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);
    final flexibleItems = _flexibleItems(context);

    return Scaffold(
      appBar: const MyAppBar("FlexiblePage"),
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
              children: flexibleItems,
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

  List<Widget> _flexibleItems(BuildContext context) {
    return [
      Flexible(
        flex: 1,
        child: _myContainer(context, Icons.favorite, Colors.blueGrey),
      ),
      Flexible(
        flex: 2,
        child: _myContainer(context, Icons.star, Colors.indigo),
      ),
      Flexible(
        flex: 3,
        child: _myContainer(context, Icons.wallet, Colors.deepPurple),
      ),
    ];
  }

  Widget _myContainer(BuildContext context, IconData icon, Color color) {
    return Container(
      color: color,
      height: 60,
      width: 200,
      alignment: const Alignment(0.0, 0.0),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
