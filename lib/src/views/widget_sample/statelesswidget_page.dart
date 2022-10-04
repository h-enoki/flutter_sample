import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class StatelessWidgetPage extends StatelessWidget {
  const StatelessWidgetPage({
    super.key,
    this.color = const Color(0xFF2DBD3A),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("StatelessWidgetPage"),
      body: Container(
        color: color,
        child: child,
      ),
    );
  }
}
