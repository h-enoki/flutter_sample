import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class HogePage extends StatelessWidget {
  const HogePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.withSettingsButton("HogePage"),
      body: Center(
        child: Text(
          "HogePage",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.green),
        ),
      ),
    );
  }
}
