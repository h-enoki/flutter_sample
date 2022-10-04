import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: const MyAppBar("WrapPage"),
      body: Container(
        color: Colors.grey,
        height: 300,
        width: 300,
        child: Wrap(
          // direction: Axis.horizontal,
          // alignment: WrapAlignment.end,
          // runAlignment: WrapAlignment.spaceAround,
          // crossAxisAlignment: WrapCrossAlignment.start,
          // textDirection: TextDirection.rtl,
          // verticalDirection: VerticalDirection.up,
          // runSpacing: 5,
          // spacing: 5,
          children: items,
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myContainer(context, Icons.favorite, Colors.blueGrey),
      _myContainer(context, Icons.star, Colors.indigo),
      _myContainer(context, Icons.wallet, Colors.deepPurple),
      _myContainer(context, Icons.yard, Colors.green),
      _myContainer(context, Icons.umbrella, Colors.yellow),
      _myContainer(context, Icons.icecream, Colors.red),
    ];
  }

  Widget _myContainer(BuildContext context, IconData icon, Color color) {
    return Container(
      color: color,
      height: 40,
      width: 70,
      // alignment: const Alignment(0.0, 0.0),
      child: Icon(
        icon,
        size: 20,
      ),
    );
  }
}
