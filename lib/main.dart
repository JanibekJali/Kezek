import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/register/home_page.dart';
import 'package:kazek/app/views/search/search_bar.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            home: HomePage(),

            // home: SearchScreen(),

            debugShowCheckedModeBanner: false,
          );
        });
  }
}
