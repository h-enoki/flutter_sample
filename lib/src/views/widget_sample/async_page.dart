import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class AsyncPage extends StatelessWidget {
  AsyncPage({super.key});

  Future<void> perform() async {
    task1();
    task3(await task2());
  }

  void task1() {
    String res = 'task1';
    debugPrint(res);
  }

  Future<String> task2() async {
    String res = 'init';
    await Future.delayed(const Duration(seconds: 3), () {
      res = 'task2_data';
      debugPrint(res);
    });
    return res;
  }

  void task3(String data) {
    String res = 'task3';
    debugPrint('$res and $data');
  }

  final streamController = StreamController<int>();

  void count() async {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      streamController.sink.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    streamController.stream.listen((addData) {
      debugPrint("$addData");
    });

    return Scaffold(
      appBar: const MyAppBar("AsyncPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items,
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myElevatedButton(
        context,
        "Task",
        onPressed: () async {
          await perform();
          count();
          debugPrint("@@@@");
        },
      ),
    ];
  }

  Widget _myElevatedButton(
    BuildContext context,
    String text, {
    VoidCallback? onPressed,
  }) {
    return Theme(
      data: Theme.of(context).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromWidth(100),
            backgroundColor: Colors.blueGrey,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
      child: Container(
        height: 30,
        margin: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          onPressed: onPressed ??
              () {
                debugPrint("onPressed");
              },
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black54,
              // fontSize: 16.0,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
