import 'package:shared_preferences/shared_preferences.dart';

class CacheNetwork {
  static late SharedPreferences preferences;

  static Future cacheInitialization() async {
    preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> insertToCache(
      {required String key, required dynamic value}) async {
    return await preferences.setString(key, value);
  }

  static String getCacheData({required String key}) {
    return preferences.getString(key)??"" ;
  }
  static Future<bool> insertBoolToCache({
    required String key,
    required bool value,
  }) async {
    return await preferences.setBool(key, value);
  }


  // Retrieve Boolean values
  static bool getBoolCacheData({required String key}) {
    return preferences.getBool(key) ?? false;
  }
  static Future<bool> deleteCacheItem({required String key}) async {
    return await preferences.remove(key);
  }
}





