import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kazek/app/views/FIREbase%20notification/notification_Servies/notification_Servies.dart';

class Messeges extends StatefulWidget {
  const Messeges({Key? key}) : super(key: key);

  @override
  State<Messeges> createState() => _MessegesState();
}

class _MessegesState extends State<Messeges> {
  NotificationServies notificationServies = NotificationServies();

  @override
  void initState() {
    super.initState();
    notificationServies.requestNotificationPermition();
    notificationServies.getDeviesToken().then((value) {
      log('device token');
      log(value);
    });
    notificationServies.isTokenRefresh();
    notificationServies.FirebaseInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
