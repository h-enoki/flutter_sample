import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final items = List<String>.generate(10, (i) => "Item $i");

  void _addList() {
    setState(() {
      items.add("Item ${items.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("ListViewPage"),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addList,
        tooltip: 'リストを追加',
        child: const Icon(Icons.add),
      ),
    );
  }
}
