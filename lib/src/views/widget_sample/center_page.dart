import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CenterPage"),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: 500,
        width: 300,
        child: Center(
          child: Container(
            color: Colors.indigo,
            height: 80,
            width: 80,
            child: const Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
