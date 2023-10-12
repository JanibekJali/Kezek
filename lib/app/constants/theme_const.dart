import 'package:flutter/material.dart';

//contants  color
const kDarkPrimaryColor = Color(0xff212121);
const kDarkSecondaryColor = Color(0xff373737);
const kLightSecondaryColor = Color(0xfff3f7fb);
const kLightPrimaryColor = Color(0xffffffff);
//theme dark
final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kDarkPrimaryColor,
  canvasColor: kDarkPrimaryColor,
  backgroundColor: kDarkSecondaryColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(color: kLightSecondaryColor),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: kLightSecondaryColor,
        displayColor: kLightSecondaryColor,
      ),
);
//theme light
final kLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kLightPrimaryColor,
  canvasColor: kLightPrimaryColor,
  backgroundColor: kLightSecondaryColor,
  iconTheme: ThemeData.light().iconTheme.copyWith(color: kDarkSecondaryColor),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: kDarkSecondaryColor,
        displayColor: kDarkSecondaryColor,
      ),
);
// size
final kTitleTextStyly = TextStyle(fontSize: 17, fontWeight: FontWeight.w600);
final kSubTitleTextStyly = TextStyle(fontSize: 11, fontWeight: FontWeight.w600);
