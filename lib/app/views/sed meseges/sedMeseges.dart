import 'package:flutter/material.dart';
import 'package:kazek/app/views/catalogs/widgets/get_in_line_widgets.dart';

class SedMeseges extends StatefulWidget {
  const SedMeseges({Key? key}) : super(key: key);

  @override
  _SedMesegesState createState() => _SedMesegesState();
}

class _SedMesegesState extends State<SedMeseges> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetInLineWidgets(
              text: 'Get token',
            ),
            GetInLineWidgets(
              text: 'Send Push Notification',
            ),
          ],
        ),
      ),
    );
  }
}
