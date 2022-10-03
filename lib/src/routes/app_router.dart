import 'package:flutter/material.dart';
import 'package:flutter_sample/src/views/hoge_page.dart';
import 'package:flutter_sample/src/views/home_page.dart';
import 'package:flutter_sample/src/views/widget_sample/column_page.dart';
import 'package:flutter_sample/src/views/widget_sample/container_page.dart';
import 'package:flutter_sample/src/views/widget_sample/expanded_page.dart';
import 'package:flutter_sample/src/views/widget_sample/listview_page.dart';
import 'package:flutter_sample/src/views/widget_sample/row_page.dart';
import 'package:flutter_sample/src/views/widget_sample/stack_page.dart';
import 'package:flutter_sample/src/views/widget_sample/statefulwidget_page.dart';
import 'package:flutter_sample/src/views/widget_sample/statelesswidget_page.dart';
import 'package:flutter_sample/src/views/widget_sample/wrap_page.dart';

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

      case AppRoutes.row:
        return _buildRoute(const RowPage());

      case AppRoutes.column:
        return _buildRoute(const ColumnPage());

      case AppRoutes.stack:
        return _buildRoute(StackPage());

      case AppRoutes.wrap:
        return _buildRoute(const WrapPage());

      case AppRoutes.expanded:
        return _buildRoute(const ExpandedPage());

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
