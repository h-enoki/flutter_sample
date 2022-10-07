import 'package:flutter/material.dart';
import 'package:flutter_sample/src/routes/app_router.dart';

// RouteObserverのインスタンス
final RouteObserver<PageRoute> _routeObserver = RouteObserver<PageRoute>();
// final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

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
