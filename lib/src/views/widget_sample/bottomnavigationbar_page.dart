import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  var _selectIndex = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    Container(
      alignment: Alignment.center,
      child: const Text('Settings'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.lightBlue,
      child: const Text('Home'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.pink.withOpacity(0.5),
      child: const Text('Favorite'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("BottomNavigationBarPage"),
      body: IndexedStack(
        index: _selectIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex, //選択中のインデックス
        onTap: _onTapItem, //タップで選択中のインデックスを変更
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
