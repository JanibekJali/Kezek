import 'dart:js_interop_unsafe';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/register/log_in.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   runApp(App(),
    
  );
}
// mixin AppLocale {
//   static const String title = 'title';


//   static const Map<String, dynamic> EN = {
//     title: 'Localization',
    
//   };
//   static const Map<String, dynamic> RU = {
//     title: 'Локализация',
    
//   };
//   static const Map<String, dynamic> JA = {
//     title: 'ローカリゼーション',
   
//   };
// }

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
     final FlutterLocalization _localization = FlutterLocalization.instance;
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark ? kDarkTheme : kLightTheme;
    return ThemeProvider(
      
    
        initTheme: initTheme,
        builder: (_, myTheme) {
          return MaterialApp(
               onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
           localizationsDelegates: AppLocalizations.localizationsDelegates, // <--- add this
      supportedLocales: AppLocalizations.supportedLocales, // <
      //       supportedLocales: _localization.supportedLocales,
      // localizationsDelegates: _localization.localizationsDelegates,

            theme: myTheme,
            home: HomeView(),

            // home: SearchScreen(),

            debugShowCheckedModeBanner: false,
          );
        });
  }
}
