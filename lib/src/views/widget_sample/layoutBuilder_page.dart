import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("LayoutBuilderPage"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            height: 100,
            width: 300,
            child: _myLayoutBuilder(context),
          ),
          Container(
            color: Colors.grey[600],
            height: 300,
            width: 100,
            child: _myLayoutBuilder(context),
          ),
        ],
      ),
    );
  }

  Widget _myLayoutBuilder(BuildContext context) {
    final items = _items(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint("===============");
        debugPrint("maxHeight:${constraints.maxHeight}");
        debugPrint("minHeight:${constraints.minHeight}");
        debugPrint("maxWidth:${constraints.maxWidth}");
        debugPrint("minWidth:${constraints.minWidth}");
        debugPrint("===============");

        if (constraints.maxHeight < 240) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items,
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items,
          );
        }
      },
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myContainer(context, Icons.favorite, Colors.blueGrey),
      _myContainer(context, Icons.star, Colors.indigo),
      _myContainer(context, Icons.wallet, Colors.deepPurple),
    ];
  }

  Widget _myContainer(BuildContext context, IconData icon, Color color) {
    return Container(
      color: color,
      height: 80,
      width: 80,
      alignment: const Alignment(0.0, 0.0),
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
