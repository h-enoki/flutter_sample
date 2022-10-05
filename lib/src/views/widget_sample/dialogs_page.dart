import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/dialog/my_alertDialog.dart';
import 'package:flutter_sample/src/components/dialog/my_simpledialog.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: const MyAppBar("DialogsPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items,
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myElevatedButton(
        context,
        "SimpleDialog",
        onPressed: () async {
          final String? selectedText = await showDialog<String>(
            context: context,
            builder: (_) {
              return const MySimpleDialog(title: "SimpleDialog");
            },
          );
          debugPrint(selectedText);
        },
      ),
      _myElevatedButton(
        context,
        "AlertDialog",
        onPressed: () async {
          final String? selectedText = await showDialog<String>(
            context: context,
            builder: (_) {
              return const MyAlertDialog(
                title: "AlertDialog",
                content: "メッセージメッセージ",
              );
            },
          );
          debugPrint(selectedText);
        },
      ),
    ];
  }

  Widget _myElevatedButton(
    BuildContext context,
    String text, {
    VoidCallback? onPressed,
  }) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromWidth(100),
          backgroundColor: Colors.blueGrey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
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
    );
  }
}
