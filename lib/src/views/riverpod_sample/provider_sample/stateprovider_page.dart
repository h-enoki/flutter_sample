import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// StateProviderの定義
// シンプルな値を管理するためのプロバイダー（StateNotifierProviderの簡易版）
final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

// Providerからデータを取得するためにConsumerWidget を使用
class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateControllerの取得
    final countStateController = ref.read(counterStateProvider.notifier);

    // watch() またはread() の引数にProviderを指定し、Providerが管理しているデータを取得
    final count = ref.watch(counterStateProvider);
    // final count = ref.read(countNotifierProvider);

    return Scaffold(
      appBar: const MyAppBar("StateProviderPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 直近のデータを元にデータ更新
          countStateController.state++;
          // countStateController.update((state) => state + 1);
          // countStateController.update((state) => count + 1);
          // countStateController.update((state) => countStateController.state + 1);
          // countStateController.state = count + 1;
          // countStateController.state = countStateController.state + 1;

          // 直近のデータ(状態)を無視してデータ更新
          // countStateController.state = 100;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
