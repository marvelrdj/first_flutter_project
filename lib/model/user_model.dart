// ignore: unused_import
import 'package:flutter/material.dart';

class usermodel {
  final String Username;
  final String Password;

  usermodel({
    required this.Username,
    required this.Password,
  });
  toJson() {
    return {
      "UserName": Username,
      "Password": Password,
    };
  }
}
