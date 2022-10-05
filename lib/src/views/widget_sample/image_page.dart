import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _items(context);

    return Scaffold(
      appBar: const MyAppBar("ImagePage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return [
      _myContainer(
        context,
        "asset",
        Image.asset("assets/images/SampleImage.jpg"),
      ),
      _myContainer(
        context,
        "network",
        Image.network("https://picsum.photos/id/200/300/200"),
      ),
    ];
  }

  Widget _myContainer(BuildContext context, String title, Widget image) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 300,
            child: image,
          ),
        ],
      ),
    );
  }
}
