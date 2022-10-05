import 'package:flutter/material.dart';

class MySimpleDialog extends StatelessWidget {
  const MySimpleDialog({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        title,
      ),
      children: <Widget>[
        // コンテンツ領域
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, "1が選択されました"),
          child: const Text("１項目目"),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, "2が選択されました"),
          child: const Text("2項目目"),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, "3が選択されました"),
          child: const Text("3項目目"),
        ),
      ],
    );
  }
}
