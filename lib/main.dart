import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/routes/app_router.dart';
import 'package:flutter_sample/src/services/pref_service.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

// RouteObserverのインスタンス
final RouteObserver<PageRoute> _routeObserver = RouteObserver<PageRoute>();
// final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

late final Provider<PrefService> sharedPrefServiceProvider;
late final Provider<PackageInfo> packageInfoProvider;
late final Provider<AndroidDeviceInfo> androidDeviceInfoProvider;

void main() async {
  // ルートにProviderScopeを追加
  runApp(const ProviderScope(child: MyApp()));

  // SharedPreferencesのインスタンスを非同期で取得
  final prefs = await SharedPreferences.getInstance();
  sharedPrefServiceProvider = Provider<PrefService>((ref) {
    return PrefService(prefs);
  });

  // package_info_plus プラットフォームからパッケージ情報を取得
  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();
  packageInfoProvider = Provider<PackageInfo>((ref) {
    return packageInfo;
  });

  // device_info_plus
  final deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    androidDeviceInfoProvider = Provider<AndroidDeviceInfo>((ref) {
      return androidInfo;
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // primaryColor: Colors.indigo,

        // textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      ),
      // RouteObserverのインスタンスをNavigatorObserverのリストに渡す
      navigatorObservers: [_routeObserver],
      // onGenerateRouteを設定
      onGenerateRoute: AppRouter.generateRoute,
      // navigatorObservers: <NavigatorObserver>[routeObserver], //別の書き方
      // onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings), //別の書き方
    );
  }
}
