import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PaddingPage"),
      ),
      body: Container(
        color: Colors.blueGrey,
        // height: 500,
        // width: 300,
        margin: const EdgeInsets.all(50),
        // padding: const EdgeInsets.all(20),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Text("PaddingPage"),
        ),
      ),
    );
  }
}
