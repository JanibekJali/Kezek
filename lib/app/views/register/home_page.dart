import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/register/second_page.dart';
import 'package:kazek/components/language_settings/language_settings.dart';
import 'package:kazek/components/nav_bottom/bottom_navigation.dart';
import 'package:kazek/data/models/user_model.dart';
import 'package:kazek/data/translations/local_keys.g.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isRepeatPasswordVisible = false;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!value.contains('@gmail.com')) {
      return 'Invalid email format';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? _validateRepeatPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value != passwordController.text) {
      return 'The passwords do not match';
    }
    return null;
  }

  void _submitForm() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondPage(),
        ));
    if (_formKey.currentState!.validate()) {
      final username = nameController.text;
      final email = emailController.text;
      final password = passwordController.text;
      final repeatPassword = repeatPasswordController.text;
      log('Username: $username');
      log('Email: $email');
      log('Password: $password');
      log('Repeat Password: $repeatPassword');
    }
  }

  Future<void> signIn() async {
    setState(() {});
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) => {
                FocusScope.of(context).requestFocus(FocusNode()),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavbarPage(),
                  ),
                ),
              });
      // log('creadetitial ==> ${credential}');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email. ');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user. ');

        log('password: ${e.code.length} ');
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 3, 24, 182), Colors.black87],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    '𝐊 𝐞 𝐳 𝐞 𝐤  𝐀𝐩𝐩',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 80.0),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    LocaleKeys.PlsSI.tr(),
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  SizedBox(
width: 20,

                                  ),
                                  Container(
                                    child: InkWell(
                                      onTap: () {},
                                      child: LanguageSettings()
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: LocaleKeys.em.tr(),
                              ),
                              validator: _validateEmail,
                            ),
                            SizedBox(height: 16.0),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: LocaleKeys.pas.tr(),
                                suffixIcon: IconButton(
                                  icon: Icon(_isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                              obscureText: !_isPasswordVisible,
                              validator: _validatePassword,
                            ),
                            SizedBox(height: 32.0),
                            ElevatedButton(
                                child: Text(LocaleKeys.SignIn.tr()),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 7, 10, 212),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                onPressed: () => signIn()),
                            SizedBox(
                              height: 5,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondPage()));
                                },
                                child: Text(LocaleKeys.DHA.tr()))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
