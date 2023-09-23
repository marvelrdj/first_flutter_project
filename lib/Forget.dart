import 'package:flutter/material.dart';

// ignore: unused_import
import 'Forget.dart';
import 'home.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'buttonwidget/buttonwidget.dart';
import 'widgets/widgets.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  State<forgetpassword> createState() => forgetpasswordState();
}

class forgetpasswordState extends State<forgetpassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final confirmPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;
  bool obscureText = true;

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
                        "assets/forgetpass.png",
                        height: 300,
                        width: 300,
                      ),
                      Text('Forget Password ?'),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: passwordController,
                        labelText: 'New Password',
                        hintText: 'Enter your Password',
                        prefixIcon: Icons.lock_open,
                        suffixIcon: obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
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
                        prefixIcon: Icons.lock,
                        suffixIcon: obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
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
                        buttonText: 'Reset Password',
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
