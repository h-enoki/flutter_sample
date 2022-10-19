import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreenPage extends StatelessWidget {
  const WebViewScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();

    return const Scaffold(
      appBar: MyAppBar("WebViewPage"),
      body: Center(
        child: WebView(
          initialUrl: 'https://flutter.dev',
        ),
      ),
    );
  }
}
