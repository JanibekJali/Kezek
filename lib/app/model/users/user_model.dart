import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String userName;
  final String id;
  final String email;

  UserModel({
    required this.userName,
    required this.id,
    required this.email,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['userName'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
    );
  }
  Map<String, dynamic> toJson() => {
        'userName': userName,
        'email': email,
        'id': id,
      };
}
