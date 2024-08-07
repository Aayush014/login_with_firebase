import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Auth Services/auth_services.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var passwordStrength = ''.obs;
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();


  void setEmail(String email) {
    this.email.value = email;
  }

  void setPassword(String password) {
    this.password.value = password;
    _checkPasswordStrength(password);
  }

  bool isEmailValid() {
    final emailRegex = RegExp(r'^[^@]+@gmail\.com$');
    return emailRegex.hasMatch(email.value);
  }

  void _checkPasswordStrength(String password) {
    final hasNumbers = RegExp(r'[0-9]').hasMatch(password);
    final hasSpecialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
    if (password.length < 6) {
      passwordStrength.value = "Weak";
    } else if (password.length < 10 || !hasNumbers || !hasSpecialCharacters) {
      passwordStrength.value = "Medium";
    } else {
      passwordStrength.value = "Strong";
    }
  }

  void signUp(String email, String pass){
    AuthServices.authServices.createAcc(email, pass);
    }

}