import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    ScrollController controller = ScrollController();

    return Scaffold(
      appBar: const MyAppBar("SingleChildScrollViewPage"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double nowOffset = controller.offset.floorToDouble();
          controller.jumpTo(nowOffset + 40);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              height: 300,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: SingleChildScrollView(
                // controller: controller,
                child: Column(
                  children: items,
                ),
              ),
            ),
            Container(
              color: Colors.grey[600],
              height: 300,
              width: 300,
              padding: const EdgeInsets.symmetric(vertical: 110),
              child: SingleChildScrollView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myContainer(context, Icons.favorite, Colors.blueGrey),
      _myContainer(context, Icons.star, Colors.indigo),
      _myContainer(context, Icons.wallet, Colors.deepPurple),
      _myContainer(context, Icons.yard, Colors.green),
      _myContainer(context, Icons.umbrella, Colors.yellow),
      _myContainer(context, Icons.icecream, Colors.red),
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
