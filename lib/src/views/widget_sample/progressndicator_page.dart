import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class ProgressIndicatorPage extends StatelessWidget {
  const ProgressIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("CircularProgressIndicatorPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircularProgressIndicator(
              strokeWidth: 8.0,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              backgroundColor: Colors.grey,
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.green),
              backgroundColor: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
