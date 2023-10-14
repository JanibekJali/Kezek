import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';

import 'app/views/profile/MyProfileView.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark ? kDarkTheme : kLightTheme;
    return ThemeProvider(
        initTheme: initTheme,
        builder: (_, myTheme) {
          return MaterialApp(
            theme: myTheme,
            home: NavbarPage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
