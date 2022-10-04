import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: const MyAppBar("AlignPage"),
      body: Container(
        color: Colors.grey,
        height: 300,
        width: 300,
        child: Stack(
          children: items,
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      Align(
        alignment: Alignment.topLeft,
        child: _myContainer(context, "topLeft", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: _myContainer(context, "topCenter", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.topRight,
        child: _myContainer(context, "topRight", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: _myContainer(context, "centerLeft", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.center,
        child: _myContainer(context, "center", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: _myContainer(context, "centerRight", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.bottomLeft,
        child: _myContainer(context, "bottomLeft", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: _myContainer(context, "bottomCenter", Colors.blueGrey),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: _myContainer(context, "bottomRight", Colors.blueGrey),
      ),
      Align(
        alignment: const Alignment(0.3, 0.3),
        child: _myContainer(context, "Alignment", Colors.indigo),
      ),
    ];
  }

  Widget _myContainer(BuildContext context, String text, Color color) {
    return Container(
      color: color,
      height: 70,
      width: 70,
      alignment: const Alignment(0.0, 0.0),
      child: Text(text),
    );
  }
}
