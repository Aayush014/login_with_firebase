import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final padding = EdgeInsets.all(screenWidth * 0.05);

    // Initialize the LoginController
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: padding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Email or username",
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  controller: loginController.txtEmail,
                  cursorOpacityAnimates: true,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black38, fontSize: screenHeight * 0.02),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenHeight * 0.03),
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        color: Colors.black38, fontSize: screenHeight * 0.02),
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                  ),
                  onChanged: (value) {
                    loginController.setEmail(value);
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  controller: loginController.txtPass,
                  onChanged: (value) {
                    loginController.setPassword(value);
                  },
                  cursorOpacityAnimates: true,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.grey, fontSize: screenHeight * 0.02),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenHeight * 0.03),
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.black38, fontSize: screenHeight * 0.02),
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: screenHeight * 0.02),
                Obx(() => Text(
                      'Password Strength: ${loginController.passwordStrength.value}',
                      style: TextStyle(
                        fontSize: screenHeight * 0.02,
                        color:
                            loginController.passwordStrength.value == 'Strong'
                                ? Colors.green
                                : (loginController.passwordStrength.value ==
                                        'Medium'
                                    ? Colors.orange
                                    : Colors.red),
                      ),
                    )),
                SizedBox(height: screenHeight * 0.05),
                Align(
                  alignment: Alignment.center,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    padding: EdgeInsets.zero,
                    color: Colors.grey,
                    onPressed: () {
                      if (loginController.isEmailValid() &&
                          loginController.passwordStrength.value == 'Strong') {
                        loginController.signUp(loginController.txtEmail.text,
                            loginController.txtPass.text);

                        Get.snackbar(
                            "Successful🥳.....", "Thank you for join US!! ",
                            snackPosition: SnackPosition.TOP,
                            backgroundColor: Colors.green);
                      } else {
                        Get.snackbar(
                          'Invalid Input',
                          'Please check your email is valid and your password is strong.',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.red
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.01,
                        horizontal: screenWidth * 0.1,
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: screenHeight * 0.02,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
