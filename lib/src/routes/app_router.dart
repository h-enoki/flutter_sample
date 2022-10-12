import 'package:flutter/material.dart';
import 'package:flutter_sample/src/views/hoge_page.dart';
import 'package:flutter_sample/src/views/home_page.dart';
import 'package:flutter_sample/src/views/widget_sample/align_page.dart';
import 'package:flutter_sample/src/views/widget_sample/async_page.dart';
import 'package:flutter_sample/src/views/widget_sample/bottomnavigationbar_page.dart';
import 'package:flutter_sample/src/views/widget_sample/center_page.dart';
import 'package:flutter_sample/src/views/widget_sample/column_page.dart';
import 'package:flutter_sample/src/views/widget_sample/container_page.dart';
import 'package:flutter_sample/src/views/widget_sample/dialogs_page.dart';
import 'package:flutter_sample/src/views/widget_sample/expanded_page.dart';
import 'package:flutter_sample/src/views/widget_sample/flexible_page.dart';
import 'package:flutter_sample/src/views/widget_sample/gridView_page.dart';
import 'package:flutter_sample/src/views/widget_sample/image_page.dart';
import 'package:flutter_sample/src/views/widget_sample/layoutBuilder_page.dart';
import 'package:flutter_sample/src/views/widget_sample/listview_page.dart';
import 'package:flutter_sample/src/views/widget_sample/padding_page.dart';
import 'package:flutter_sample/src/views/widget_sample/progressndicator_page.dart';
import 'package:flutter_sample/src/views/widget_sample/row_page.dart';
import 'package:flutter_sample/src/views/widget_sample/singlechildscrollView_page.dart';
import 'package:flutter_sample/src/views/widget_sample/stack_page.dart';
import 'package:flutter_sample/src/views/widget_sample/statefulwidget_page.dart';
import 'package:flutter_sample/src/views/widget_sample/statelesswidget_page.dart';
import 'package:flutter_sample/src/views/widget_sample/wrap_page.dart';

import 'app_routes.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _buildRoute(MyHomePage());

      case AppRoutes.hoge:
        return _buildRoute(const HogePage());

      case AppRoutes.statefulWidget:
        return _buildRoute(const StatefulWidgetPage());

      case AppRoutes.statelessWidget:
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

      case AppRoutes.flexible:
        return _buildRoute(const FlexiblePage());

      case AppRoutes.layoutBuilder:
        return _buildRoute(const LayoutBuilderPage());

      case AppRoutes.center:
        return _buildRoute(const CenterPage());

      case AppRoutes.align:
        return _buildRoute(const AlignPage());

      case AppRoutes.padding:
        return _buildRoute(const PaddingPage());

      case AppRoutes.bottomNavigationBar:
        return _buildRoute(const BottomNavigationBarPage());

      case AppRoutes.dialogs:
        return _buildRoute(const DialogsPage());

      case AppRoutes.image:
        return _buildRoute(const ImagePage());

      case AppRoutes.singleChildScrollView:
        return _buildRoute(const SingleChildScrollViewPage());

      case AppRoutes.gridView:
        return _buildRoute(const GridViewPage());

      case AppRoutes.progressIndicator:
        return _buildRoute(const ProgressIndicatorPage());

      case AppRoutes.async:
        return _buildRoute(const AsyncPage());

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
