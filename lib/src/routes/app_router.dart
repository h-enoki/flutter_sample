import 'package:flutter/material.dart';
import 'package:flutter_sample/src/views/container_page.dart';
import 'package:flutter_sample/src/views/hoge_page.dart';
import 'package:flutter_sample/src/views/home_page.dart';
import 'package:flutter_sample/src/views/listview_page.dart';
import 'package:flutter_sample/src/views/statefulwidget_page.dart';
import 'package:flutter_sample/src/views/statelesswidget_page.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _buildRoute(const MyHomePage());

      case AppRoutes.hoge:
        return _buildRoute(HogePage());

      case AppRoutes.statefulwidget:
        return _buildRoute(const StatefulWidgetPage());

      case AppRoutes.statelesswidget:
        return _buildRoute(
          const StatelessWidgetPage(
            color: Colors.blueGrey,
            child: Center(
              child: Text("StatelessWidgetPage"),
            ),
          ),
        );
      case AppRoutes.listView:
        return _buildRoute(const ListViewPage());

      case AppRoutes.container:
        return _buildRoute(const ContainerPage());

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
