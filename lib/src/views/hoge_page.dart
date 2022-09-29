import 'package:flutter/material.dart';

class HogePage extends StatefulWidget {
  const HogePage({super.key});

  @override
  State<HogePage> createState() => _HogePageState();
}

class _HogePageState extends State<HogePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HogePage"),
      ),
      body: const Center(
        child: Text("HogePage"),
      ),
    );
  }
}
