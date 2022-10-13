import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// StreamProviderの定義
// Streamから取得したデータを管理するProvider（データを非同期で断続的に取得）
final streamProvider = StreamProvider<dynamic>((ref) {
  return getNumbers();
});

// 非同期処理（Stream）
Stream<dynamic> getNumbers() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield 'Are You Ready?';

  await Future.delayed(const Duration(seconds: 1));
  yield 3;

  await Future.delayed(const Duration(seconds: 1));
  yield 2;

  await Future.delayed(const Duration(seconds: 1));
  yield 1;

  await Future.delayed(const Duration(seconds: 1));
  yield 'End';
}

// Providerからデータを取得するためにConsumerWidget を使用
class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // AsyncValueオブジェクトを取得
    final asyncValue = ref.watch(streamProvider);

    return Scaffold(
      appBar: const MyAppBar("StreamProviderPage"),
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
          ref.refresh(streamProvider);
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
