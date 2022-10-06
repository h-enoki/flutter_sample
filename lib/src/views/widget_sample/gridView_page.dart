import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final items = List<String>.generate(10, (i) => "Item $i");

  void _addList() {
    setState(() {
      items.add("Item ${items.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("GridViewPage"),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: index.isEven ? Colors.blue : Colors.yellow,
            child: Center(
              child: Text(items[index]),
            ),
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
