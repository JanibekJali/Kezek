import 'package:firebase_messaging/firebase_messaging.dart';

//10min
class NotificationServies {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  void requestNotificationPermition() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permision');
    } else if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted provisional permision');
    } else {
      print('User denied permision');
    }
  }
}
