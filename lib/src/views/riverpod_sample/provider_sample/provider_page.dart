import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

// Providerの定義
// 外部から変更することができないデータを管理するプロバイダー
final strProvider = Provider((_) {
  return 'Hello Riverpod';
});

// Providerからデータを取得するためにConsumerWidget を使用
class ProviderPage extends ConsumerWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch() またはread() の引数にProviderを指定し、Providerが管理しているデータを取得
    // データの変更を監視する必要がある時：watch()
    // データの変更を監視する必要がない時：read()
    final value = ref.watch(strProvider);
    // final value = ref.read(strProvider);

    return Scaffold(
      appBar: const MyAppBar("ProviderPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value),
          ],
        ),
      ),
    );
  }
}
