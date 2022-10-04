import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("ContainerPage"),
      body: Container(
        color: Colors.blueGrey,
        // height: 500,
        // width: 300,
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.indigo,
          alignment: const Alignment(0.0, 0.0),
          child: const Text("ContainerPage"),
        ),
      ),
    );
  }
}
