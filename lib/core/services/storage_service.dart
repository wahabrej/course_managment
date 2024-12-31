import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  // Constants for preference keys
  static const String _tokenKey = 'token';
  static const String _idKey = 'userId';
  static const String _roleKey = 'roleKey';

  // Singleton instance for SharedPreferences
  static SharedPreferences? _preferences;

  // Initialize SharedPreferences (call this during app startup)
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Check if a token exists in local storage
  static bool hasToken() {
    final token = _preferences?.getString(_tokenKey);
    return token != null;
  }

  // Save the token and user ID to local storage
  static Future<void> saveToken(String token,String role) async {
    await _preferences?.setString(_tokenKey, token);
    await _preferences?.setString(_roleKey, role);
  }

  // Remove the token and user ID from local storage (for logout)
  static Future<void> logoutUser() async {
    await _preferences?.remove(_tokenKey);
    await _preferences?.remove(_roleKey);
    Get.offAllNamed('/userSelection');
  }

  // Getter for user ID
  static String? get userId => _preferences?.getString(_idKey);
  // Getter for token
  static String? get token => _preferences?.getString(_tokenKey);
  // Getter for role
  static String? get role => _preferences?.getString(_roleKey);
}
