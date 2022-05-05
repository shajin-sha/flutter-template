import 'package:app/screen/home/home.dart';
import 'package:app/screen/user/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Setting android status bar and native navigation bar.
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    // MaterialApp.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      themeMode: ThemeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      onGenerateRoute: (RouteSettings settings) {
        // sing CupertinoPageRoute we can archive nice screen transition.
        switch (settings.name) {
          // Home screen
          case '/':
            return CupertinoPageRoute(
              builder: (_) => const Home(),
              settings: settings,
            );
          // User screen
          case 'user':
            return CupertinoPageRoute(
              builder: (_) => const User(),
              settings: settings,
            );
        }
      },
      home: const Home(),
    );
  }
}
