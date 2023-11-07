import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/sed%20meseges/sedMeseges.dart';
import 'package:kazek/components/constants/theme_const.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> backgroundHandle(RemoteMessage message) async {
  String? title = message.notification!.title;
  String? body = message.notification!.body;
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 123,
      channelKey: 'call_channel',
      color: Colors.white,
      title: title,
      body: body,
      wakeUpScreen: true,
      fullScreenIntent: true,
      autoDismissible: false,
      backgroundColor: Colors.orange,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'Get In Line',
        label: 'Accept Call',
        color: Colors.green,
        autoDismissible: true,
      ),
      NotificationActionButton(
        key: 'Refusal',
        label: 'Refusal Get In Line',
        color: Colors.red,
        autoDismissible: true,
      ),
    ],
  );
}

Future<void> main() async {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelKey: 'call_channel',
      channelName: 'Call Chanel ',
      channelDescription: 'Chanel of Caling ',
      defaultColor: Colors.red,
      ledColor: Colors.white,
      importance: NotificationImportance.Min,
      channelShowBadge: true,
      locked: true,
    )
  ]);
  FirebaseMessaging.onBackgroundMessage(backgroundHandle);
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
