import 'package:flutter/material.dart';
import 'package:flutter_sample/src/views/cached_network_image_page.dart';
import 'package:flutter_sample/src/views/device_info_page.dart';
import 'package:flutter_sample/src/views/dio_coffee_page.dart';
import 'package:flutter_sample/src/views/flutter_keyboard_visibility_page.dart';
import 'package:flutter_sample/src/views/hoge_page.dart';
import 'package:flutter_sample/src/views/home_page.dart';
import 'package:flutter_sample/src/views/image_gallery_saver_page.dart';
import 'package:flutter_sample/src/views/package_info_page.dart';
import 'package:flutter_sample/src/views/permission_handler.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/combinning_provider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/futureprovider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/provider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/statenotifierprovider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/stateprovider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/provider_sample/streamprovider_page.dart';
import 'package:flutter_sample/src/views/riverpod_sample/rivderpod_page.dart';
import 'package:flutter_sample/src/views/secure_storage_page.dart';
import 'package:flutter_sample/src/views/shared_preferences_page.dart.dart';
import 'package:flutter_sample/src/views/webview_sample/webview_page.dart';
import 'package:flutter_sample/src/views/webview_sample/webview_screen.dart';
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

      case AppRoutes.rivderpod:
        return _buildRoute(const RivderpodPage());

      case AppRoutes.provider:
        return _buildRoute(const ProviderPage());

      case AppRoutes.stateProvider:
        return _buildRoute(const StateProviderPage());

      case AppRoutes.stateNotifierProvider:
        return _buildRoute(const StateNotifierProviderPage());

      case AppRoutes.futureProvider:
        return _buildRoute(const FutureProviderPage());

      case AppRoutes.streamProvider:
        return _buildRoute(const StreamProviderPage());

      case AppRoutes.combinningProvider:
        return _buildRoute(const CombinningProviderPage());

      case AppRoutes.dio:
        return _buildRoute(const DioCoffeePage());

      case AppRoutes.sharedPreferences:
        return _buildRoute(SharedPreferencesPage());

      case AppRoutes.webView:
        return _buildRoute(const WebViewPage());

      case AppRoutes.webViewScreen:
        return _buildRoute(const WebViewScreenPage());

      case AppRoutes.secureStorage:
        return _buildRoute(SecureStoragePage());

      case AppRoutes.imageGallerySaver:
        return _buildRoute(const ImageGallerySaverPage());

      case AppRoutes.cachedNetworkImage:
        return _buildRoute(CachedNetworkImagePage());

      case AppRoutes.flutterKeyboardVisibility:
        return _buildRoute(const FlutterKeyboardVisibilityPage());

      case AppRoutes.packageInfo:
        return _buildRoute(const PackageInfoPage());

      case AppRoutes.deviceInfo:
        return _buildRoute(const DeviceInfoPage());

      case AppRoutes.permissionHandler:
        return _buildRoute(const PermissionHandlerPage());

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
