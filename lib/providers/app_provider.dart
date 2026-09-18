import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  String _language = 'uz_lat'; // uz_lat, uz_cyr, ru, en

  ThemeMode get themeMode => _themeMode;
  String get language => _language;

  AppProvider() {
    _loadSettings();
  }

  void setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('themeMode', mode.toString());
  }

  void setLanguage(String lang) async {
    _language = lang;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('appLang', lang);
  }

  void _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    String? lang = prefs.getString('appLang');
    String? theme = prefs.getString('themeMode');

    if (lang != null) _language = lang;
    if (theme != null) {
      _themeMode = ThemeMode.values.firstWhere(
        (e) => e.toString() == theme,
        orElse: () => ThemeMode.system,
      );
    }
    notifyListeners();
  }
}