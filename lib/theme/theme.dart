import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  static ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Color(0xff202022)),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xffABD2BF),
        onPrimary: Colors.white,
        secondary: const Color(0xffE9DA74),
        onSurface: const Color(0xff202022),
        onSecondary: const Color(0xff202022),
        onBackground: const Color(0xff202022)),
    iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 56, 56, 56), opacity: 0.8),
  );
}

// #202022
