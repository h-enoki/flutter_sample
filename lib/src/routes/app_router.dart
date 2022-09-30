import 'package:flutter/material.dart';
import 'package:flutter_sample/src/views/hoge_page.dart';
import 'package:flutter_sample/src/views/home_page.dart';
import 'package:flutter_sample/src/views/statefulwidget_page.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _buildRoute(const MyHomePage());
      case AppRoutes.hoge:
        return _buildRoute(const HogePage());
      case AppRoutes.statefulwidget:
        return _buildRoute(const StatefulWidgetPage());
      default:
        return null;
    }
  }

  static Route<dynamic>? _buildRoute(
    Widget child, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => child,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    );
  }
}
