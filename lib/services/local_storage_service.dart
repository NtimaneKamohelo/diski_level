import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  //String Operations
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  String? getString(String key) {
    //Fetches from storage
    return _prefs.getString(key);
  }

  //Int operations
  Future<bool> setInt(String key, int value) async{
    return await _prefs.setInt(key, value);
  }
  
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  //Bool operation
  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    return _prefs.getBool(key);
  }

  //Get Objects - SharedPreference cant get Objects
  Future<bool> setObject<T> (String key, T value) async {
    return await _prefs.setString(key, jsonEncode(value));
  }

  List<T>? getList<T>(
    String key,
    T Function(Map<String, dynamic> json) fromJson,
  )
  {
    final jsonString = _prefs.getString(key);
    
    if(jsonString != null){
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((item) => fromJson(item)).toList();
    }
    return null;
  }
  

  //Remove operations
  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  Future<bool> clear() async {
    return await _prefs.clear();
  }

  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }
}


