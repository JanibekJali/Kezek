import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kazek/components/constants/theme_const.dart';

import '../../../google auth/firebasee_auth.dart';

class ProfileName extends StatefulWidget {
  const ProfileName({Key? key}) : super(key: key);

  @override
  _ProfileNameState createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Kadirov Muhammadaziz',
          style: kTitleTextStyly,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          FirebaseAuth.instance.currentUser!.email.toString(),
          style: kSubTitleTextStyly,
        ),
      ],
    );
  }
}
