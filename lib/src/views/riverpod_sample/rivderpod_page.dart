import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// Providerをグローバル変数として定義する
// Provider：外部から変更することができないデータを管理するProvider
final strProvider = Provider((_) {
  return 'Hello Riverpod';
});

// StateNotifierProvider：StateNotifierのサブクラスをデータとして管理するProvider
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

  void count() async {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      state++;
    }
  }
}

// Providerからデータを取得するためにConsumerWidget を使用
class RivderpodPage extends ConsumerWidget {
  const RivderpodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch() またはread() の引数にProviderを指定し、Providerが管理しているデータを取得
    // データの変更を監視する必要がある時：watch()
    // データの変更を監視する必要がない時：read()
    final watchValue = ref.watch(strProvider);
    final readValue = ref.read(strProvider);

    // StateNotifier のサブクラスはWidgetRef クラスのwatch() またはread() の引数に,
    // StateNotifierProvider インスタンスの.notifier を指定することで取得可能
    final countStateController = ref.read(countNotifierProvider.notifier);

    // StateNotifier のサブクラスのデータ(state )WidgetRef クラスのwatch() またはread() の引数に、
    // StateNotifierProvider インスタンスを指定することで取得することができます。
    final watchCount = ref.watch(countNotifierProvider);
    final readCount = ref.read(countNotifierProvider);

    return Scaffold(
      appBar: const MyAppBar("RivderpodPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(watchValue),
            Text(readValue),
            Text(watchCount.toString()),
            Text(readCount.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countStateController.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
