import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kazek/app/views/register/auth/register_auth/google_signIn.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => AuthService().signinWithGoogle(),
      icon: Icon(Icons.account_circle),
      label: Text('Войти через Google'),
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent, // Цвет фона кнопки
        onPrimary: Colors.white, // Цвет текста на кнопке
      ),
    );
  }
}
