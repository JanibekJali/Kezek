import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/register/home_page.dart';
import 'package:kazek/app/views/search/search_bar.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kazek/translations/codegen_loader.g.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(child:App() , 
    
    supportedLocales:[

      Locale('en'),
      Locale('ru'),
  
    ]
     ,
     path:'assets/translations',
     fallbackLocale: Locale('en'),
     assetLoader: CodegenLoader(),
      ),
  );
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
            
            localizationsDelegates: context.localizationDelegates ,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            
            theme: myTheme,
            home: SignIn(),

            // home: SearchScreen(),

            debugShowCheckedModeBanner: false,
          );
        });
  }
}
