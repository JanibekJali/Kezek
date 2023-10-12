import 'package:flutter/material.dart';
import 'package:kazek/app/constants/theme_const.dart';

class ProfileName extends StatefulWidget {
  const ProfileName({Key? key}) : super(key: key);

  @override
  _ProfileNameState createState() => _ProfileNameState();
}

class _ProfileNameState extends State<ProfileName> {
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
          'kadirovmuhammadaziz79@gmail.com',
          style: kSubTitleTextStyly,
        ),
      ],
    );
  }
}
