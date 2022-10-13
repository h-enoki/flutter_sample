import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// StateNotifierProviderの定義
// StateNotifierのサブクラスをデータとして管理するProvider
// <管理するStateNotifier のサブクラス名, StateNotifier で管理するデータの型>
final countNotifierProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

// StateNotifierProviderで管理するStateNotifierのサブクラス
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state++;
  }

  // void count() async {
  //   for (int i = 1; i <= 10; i++) {
  //     await Future.delayed(const Duration(seconds: 1));
  //     state++;
  //   }
  // }
}

// Providerからデータを取得するためにConsumerWidget を使用
class StateNotifierProviderPage extends ConsumerWidget {
  const StateNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateControllerの取得
    final countStateController = ref.read(countNotifierProvider.notifier);

    // watch() またはread() の引数にProviderを指定し、Providerが管理しているデータを取得
    final count = ref.watch(countNotifierProvider);
    // final count = ref.read(countNotifierProvider);

    return Scaffold(
      appBar: const MyAppBar("StateNotifierProviderPage"),
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
          // CounterNotifierに実装したincrement() で、StateNotifierで管理しているデータを変更
          countStateController.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
