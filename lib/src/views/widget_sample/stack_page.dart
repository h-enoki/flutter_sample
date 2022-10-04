import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class StackPage extends StatelessWidget {
  StackPage({super.key});

  final random = Random();
  double get randomValue => (random.nextDouble() * 2) - 1;

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: const MyAppBar("StackPage"),
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
      Positioned(
        left: 20.0,
        top: 20.0,
        width: 200.0,
        height: 200.0,
        child: _myContainer(context, Icons.favorite, Colors.blueGrey),
      ),
      Positioned(
        left: 150.0,
        top: 150.0,
        width: 100.0,
        height: 100.0,
        child: _myContainer(context, Icons.star, Colors.indigo),
      ),
      Positioned(
        left: 220.0,
        top: 220.0,
        width: 50.0,
        height: 50.0,
        child: _myContainer(context, Icons.wallet, Colors.deepPurple),
      ),
      // ランダムな位置にstarを表示
      for (var i = 0; i < 100; i++)
        Align(
          alignment: Alignment(randomValue, randomValue),
          child: Icon(
            Icons.star,
            color: Colors.amber,
            size: random.nextInt(30) * 1.0,
          ),
        ),
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
