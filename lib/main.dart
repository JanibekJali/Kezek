import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/sed%20meseges/sedMeseges.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // AwesomeNotifications().initialize();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(App());
}
//11 minut

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
            // home: HomePageRegister(),
            home: SedMeseges(),

            // home: SearchScreen(),

            debugShowCheckedModeBanner: false,
          );
        });
  }
}
