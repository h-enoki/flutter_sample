import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// プロバイダーを組み合わせる
// StateProviderの定義
final counterStateProvider = StateProvider((ref) => 0);

// StateProviderを利用する別のプロバイダーの定義
final count10Provider = Provider((ref) {
  final count = ref.watch(counterStateProvider);
  return count * 10;
});

// Providerからデータを取得するためにConsumerWidget を使用
class CombinningProviderPage extends ConsumerWidget {
  const CombinningProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateControllerの取得
    final countStateController = ref.read(counterStateProvider.notifier);

    // watch() またはread() の引数にProviderを指定し、Providerが管理しているデータを取得
    final value = ref.watch(count10Provider);

    return Scaffold(
      appBar: const MyAppBar("CombinningProviderPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // データ更新
          countStateController.state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
