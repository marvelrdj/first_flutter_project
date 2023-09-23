import 'package:flutter/material.dart';
import 'home.dart';
// ignore: unused_import
import 'Forget.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'widgets/widgets.dart';
import 'buttonwidget/buttonwidget.dart';

class changepass extends StatefulWidget {
  const changepass({Key? key}) : super(key: key);

  @override
  State<changepass> createState() => changepassState();
}

class changepassState extends State<changepass> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final confirmPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2, right: 30, left: 30),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/blogo1.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: passwordController,
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password.';
                          }
                          return null; // Validation passed
                        },
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: confirmPasswordController,
                        labelText: 'Confirm Password',
                        hintText: 'Enter your Confirm Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your confirm password.';
                          }
                          if (value != passwordController.text) {
                            return 'Passwords do not match.';
                          }
                          return null; // Validation passed
                        },
                      ),
                      SizedBox(height: 20),
                      CustomElevatedButton(
                        buttonText: 'Change Password',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (passwordController.text == 'sri') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Password changed successful!'),
                                ),
                              );
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => home(),
                                ),
                              );
                            } else {
                              // Handle incorrect password
                            }
                          }
                        },
                      ),
                    ],
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
