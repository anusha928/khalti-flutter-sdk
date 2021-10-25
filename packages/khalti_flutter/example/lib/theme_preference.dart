import 'package:flutter/material.dart';

class ThemePreferenceNotifier extends ChangeNotifier {
  Brightness _brightness = Brightness.light;
  Locale _locale = Locale('en', 'US');

  Brightness get brightness => _brightness;
  Locale get locale => _locale;

  bool get isDarkMode => _brightness == Brightness.dark;

  void updateBrightness({required bool isDarkMode}) {
    _brightness = isDarkMode ? Brightness.dark : Brightness.light;
    notifyListeners();
  }
}
