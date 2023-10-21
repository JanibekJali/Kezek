import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kazek/app/views/home/home_view.dart';
import 'package:kazek/app/views/register/home_page.dart';
import 'package:kazek/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isRepeatPasswordVisible = false;
  bool _isLoading = false;
  


  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    } else if (!value.contains('@')) {
      return 'Invalid Name format';
    }
    return null;}
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

final users = FirebaseFirestore.instance.collection('users');
  final _uid = Uuid().v4();
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final username = nameController.text;
      final email = emailController.text;
      final password = passwordController.text;
      final repeatPassword = repeatPasswordController.text;
      print('Username: $username');
      print('Email: $email');
      print('Password: $password');
      print('Repeat Password: $repeatPassword');
    }
  }
  

    
  Future<void> addUser() {
    final userModel = UserModel(
      email: emailController.text,
      name: nameController.text,
      id: _uid,
    );
    return users
        .add(
          userModel.toJson(),
        )
        .then((value) => {
           
            })
        .catchError((error) => log("Failed to add user: $error"));
  }

  Future<void> signUp() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            
            email: emailController.text,
            password: passwordController.text,
          )
          .then((value) => {
                // addUser(),
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeView(),)),
                FocusScope.of(context).requestFocus(FocusNode()),
                nameController.clear(),
                emailController.clear(),
                passwordController.clear(),
                repeatPasswordController.clear(),
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
       
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
     
      }
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      log('e ==> $e');
    }
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
                            Text(
                              'Please Sign up',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Name',
                              ),
                              validator: _validateName,
                            ),
                              SizedBox(height: 16.0),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'E-mail',
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
                                hintText: 'Password',
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
                            SizedBox(height: 16.0),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: repeatPasswordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: 'Repeat Password',
                                suffixIcon: IconButton(
                                  icon: Icon(_isRepeatPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isRepeatPasswordVisible =
                                          !_isRepeatPasswordVisible;
                                    });
                                  },
                                ),
                              ),
                              obscureText: !_isRepeatPasswordVisible,
                              validator: _validateRepeatPassword,
                            ),
                            SizedBox(height: 32.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 7, 10, 212),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onPressed: () {
                                _submitForm();
                                signUp();
                              
                              },
                              child: Text('Sign in'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage1()));
                                },
                                child: Text('You already have acount? Sing in '))
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
