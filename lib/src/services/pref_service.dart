import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey {
  text,
}

extension PrefKeyEx on PrefKey {
  String get keyString {
    return name;
  }
}

class PrefService {
  final SharedPreferences _prefs;

  PrefService(this._prefs);

  // 保存
  Future<void> setString(PrefKey key, String textValue) async {
    debugPrint("saveData");

    //SharedPreferencesに値を保存
    await _prefs.setString(key.keyString, textValue);
  }

  // 読み取り
  Future<String?> getString(PrefKey key) async {
    debugPrint("getData");

    //SharedPreferencesの値を取得
    final textValue = _prefs.getString(key.keyString);
    return textValue;
  }

  // 削除
  Future<void> remove(PrefKey key) async {
    _prefs.remove(key.keyString);
  }
}
