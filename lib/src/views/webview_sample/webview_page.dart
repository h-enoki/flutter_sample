import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';
import 'package:flutter_sample/src/routes/app_routes.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar("WebViewPage"),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.pushNamed(context, AppRoutes.webViewScreen),
          child: const Text('Launch Web View'),
        ),
      ),
    );
  }
}
