import 'package:flutter/material.dart';

// StatefulWidgetを継承したクラスを作る
class StatefulWidgetPage extends StatefulWidget {
  const StatefulWidgetPage({super.key});

  // createState()　で"State"（Stateを継承したクラス）を返す（下で作成するクラス）
  @override
  State<StatefulWidgetPage> createState() => _StatefulWidgetPageState();
}

// Stateを継承したクラスを作る（上記のcreateState()で返されるクラス）
class _StatefulWidgetPageState extends State<StatefulWidgetPage> {
  // 変更するフィールドを定義
  int _counter = 0;

  // 変更するメソッドを定義
  void _incrementCounter() {
    // 変更したらUIも変わる操作をsetStateで包む
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidgetPage"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque, //画面全体をタップ
        onTap: _incrementCounter,
        onLongPress: _resetCounter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("StatefulWidgetPage"),
              const SizedBox(height: 20),
              const Text("画面をタップするとカウントアップ"),
              const Text("画面をロングタップするとリセット"),
              const SizedBox(height: 20),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
