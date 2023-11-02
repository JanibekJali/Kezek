// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "Sign Up": " Sign Up",
  "Sign In": " Sign In",
  "PlsSU": "Please Sign Up ",
  "PlsSI": "Please Sign In ",
  "em": "E-mail",
  "pas": "Password",
  "AHAA": "Already have an account? Sign In",
  "RP": "Repeat Password",
  "DHA": "Don't have an account? Sign Up",
  "name": "Name"
};
static const Map<String,dynamic> ru = {
  "Sign Up": "Зарегистрироваться",
  "Sign In": "Войти",
  "PlsSU": "Пожалуйста зарегистрируйтесь",
  "PlsSI": "Пожалуйста войдите ",
  "em": "почта",
  "pas": "код-пароль",
  "AHAA": "Уже есть акаунт? войти",
  "RP": "Подтвердите пароль",
  "Kezek": "Kezek App",
  "DHA": "Нет акаунта? Зарегистрироваться",
  "name": "Имя"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
