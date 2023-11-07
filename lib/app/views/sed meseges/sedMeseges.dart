import 'dart:convert';
import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SedMeseges extends StatefulWidget {
  const SedMeseges({Key? key}) : super(key: key);

  @override
  _SedMesegesState createState() => _SedMesegesState();
}

class _SedMesegesState extends State<SedMeseges> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
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
            label: 'accept det in line',
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
      AwesomeNotifications().actionStream.listen(
        (event) async {
          if (event.buttonKeyPressed == 'Refusal') {
            print('Refusal Get In Line');
          } else if (event.buttonKeyPressed == 'Get In Line') {
            print('accept det in line');
          } else {
            print('Clik on Notification');
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () async {
                String? token = await FirebaseMessaging.instance.getToken();
                log('$token');
              },
              child: Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[900],
                  ),
                  child: Text(
                    'get tocen '.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
            ),
            InkWell(
              onTap: () {
                sendPushNotification();
                log('${sendPushNotification()}');
              },
              child: Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue[900],
                  ),
                  child: Text(
                    'Send meseges'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Future<void> sendPushNotification() async {
    try {
      http.Response response = await http.post(
        Uri.parse(
            'https://appengine.googleapis.com/AIzaSyCcBcmDgLMpov9N-eVtKwpWGFL1xCWh8s0'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization':
              'key=AAAAuh8cQ20:APA91bGwxROg6C4vdClV3RnDdsyagceTDYKEwG-3Qf8SFy7oZbwbgHyiHMpxA7_awYt86dzxGMMK_PDgHlUy6RN9wrNjIAMql3hmEag57dfgHS3Y0Lc63-uDbpK3JUV4sg_v2uzlNfda',
        },
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{
              'body': 'hi im flutter devoloper',
              'title': 'incom call',
            },
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'id': '1',
              'status': 'done'
            },
            'to':
                // 'cGs0yAumTy6tQNP9nVgjlt:APA91bFjMrFSj-zUhvg1FSNXibiM_BTbAPE_qobRdwhxNFvmvarU3UE1h5ud4ai6Z1QhgrkEl9hBoITLea2dwM2qajgJzYdp1oShMD5HtHEV3XIj4om_XIi91kU41AvOoC827-EAWno0'
                'c9kqOPd5TCiKBNRYwYlTqS:APA91bGjHD_eHC-AdUyW7xA5oyC53_E8vgdg5wMny0lBU4IvsAw1FTnK7MDvmVv8bpwVESTVdRiF93qQL45_mY9pbs8h6r3wNUTglcQOOBSS8kbYFWhJj8n_VygkjZbvbqOR1PwztEPB'
          },
        ),
      );
      response;
    } catch (e) {
      e;
    }
  }
}
