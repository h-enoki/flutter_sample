import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/main.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';
import 'package:flutter_sample/src/services/pref_service.dart';

// 画面表示用のProviderの定義
final textValueProvider = FutureProvider<String?>((ref) async {
  // SharedPreferencesの読み込み
  final textValue =
      await ref.read(sharedPrefServiceProvider).getString(PrefKey.text) ??
          "未入力";
  return textValue;
});

class SharedPreferencesPage extends ConsumerWidget {
  SharedPreferencesPage({super.key});

  // TextFieldのコントローラー
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textValue = ref.watch(textValueProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: MyAppBar.withSettingsButton(
          "SharedPreferencesPage",
          onSettingsPressed: () => FocusScope.of(context).unfocus(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // when()で非同期処理の状態に応じたウィジェットを返す
            textValue.when(
              // エラー時
              error: (err, _) => Text(err.toString()),
              // 読み込み時
              loading: () => const CircularProgressIndicator(),
              // データ受け取り時
              data: (data) => Text(
                data.toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.blue),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: "入力してください"),
                controller: textEditingController,
                enabled: true,
                maxLength: 20,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // キーボードを閉じる
                    FocusScope.of(context).unfocus();
                    // TextFieldの入力値を取得
                    String textValue = textEditingController.text;
                    // SharedPreferencesの保存
                    ref.read(sharedPrefServiceProvider).setString(
                          PrefKey.text,
                          textValue,
                        );
                    // 画面表示用のプロバイダーを更新
                    ref.refresh(textValueProvider);
                    textEditingController.clear();
                  },
                  child: const Text("保存"),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () async {
                    // キーボードを閉じる
                    FocusScope.of(context).unfocus();
                    // SharedPreferencesの読み込み
                    final textValue = await ref
                            .read(sharedPrefServiceProvider)
                            .getString(PrefKey.text) ??
                        "未入力";
                    debugPrint(textValue);
                  },
                  child: const Text("読込み"),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // キーボードを閉じる
                    FocusScope.of(context).unfocus();
                    // SharedPreferencesの削除
                    ref.read(sharedPrefServiceProvider).remove(PrefKey.text);
                    // 画面表示用のプロバイダーを更新
                    ref.refresh(textValueProvider);
                  },
                  child: const Text("削除"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
