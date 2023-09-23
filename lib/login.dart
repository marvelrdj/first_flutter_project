import 'package:flutter/material.dart';
import 'sign.dart';
// ignore: unused_import
import 'Forget.dart';

// ignore: unused_import
import 'home.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'buttonwidget/buttonwidget.dart';
import 'widgets/widgets.dart';
// ignore: unused_import
import 'model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => loginState();
}

class loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                        "assets/blogo1.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        controller: emailController,
                        labelText: 'Email',
                        hintText: 'Enter your Email',
                        prefixIcon: Icons.person,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Username.';
                          }
                          return null; // Validation passed
                        },
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        controller: passwordController,
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        prefixIcon: Icons.lock,
                        suffixIcon: obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password.';
                          }
                          return null; // Validation passed
                        },
                      ),
                      SizedBox(height: 20),
                      CustomTextButton(
                        buttonText: 'Forget password ?',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => forgetpassword(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      CustomElevatedButton(
                        buttonText: 'login',
                        onPressed: () async {
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => home()));
                          } catch (e) {
                            _formKey.currentState!.validate();
                          }
                        },
                      ),
                      Row(
                        children: [
                          Text('Already have an account?'),
                          CustomTextButton(
                            buttonText: 'Sign in',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => signpage(),
                                ),
                              );
                            },
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
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
