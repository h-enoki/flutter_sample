import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("ColumnPage"),
      ),
      body: Container(
        color: Colors.grey,
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
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
    ];
  }

  Widget _myContainer(BuildContext context, IconData icon, Color color) {
    return Container(
      color: color,
      height: 80,
      width: 80,
      alignment: const Alignment(0.0, 0.0),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
