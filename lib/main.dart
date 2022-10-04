import 'package:flutter/material.dart';
import 'package:flutter_sample/src/routes/app_router.dart';

// RouteObserverのインスタンス
final RouteObserver<PageRoute> _routeObserver = RouteObserver<PageRoute>();
// final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>(); //別の書き方

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
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
