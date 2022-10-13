import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// FutureProviderの定義
// Futureから取得したデータを管理するProvider
final futureProvider = FutureProvider((ref) async {
  return await task();
});

// 非同期処理（Future）
Future<String> task() async {
  String res = "";
  await Future.delayed(const Duration(seconds: 3), () {
    res = "Hello World";
  });
  return res;
}

// Providerからデータを取得するためにConsumerWidget を使用
class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // AsyncValueオブジェクトを取得
    final asyncValue = ref.watch(futureProvider);

    return Scaffold(
      appBar: const MyAppBar("FutureProviderPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // when()で非同期処理の状態に応じたウィジェットを返す
            asyncValue.when(
              // エラー時
              error: (err, _) => Text(err.toString()),
              // 読み込み時
              loading: () => const CircularProgressIndicator(),
              // データ受け取り時
              data: (data) => Text(data.toString()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 状態を更新する
          ref.refresh(futureProvider);
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
