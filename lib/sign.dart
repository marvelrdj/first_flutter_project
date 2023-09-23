import 'package:flutter/material.dart';
import 'package:sample/login.dart';
// ignore: unused_import
import 'package:sample/sign.dart';

// ignore: unused_import
import 'Forget.dart';
// ignore: unused_import
import 'home.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'package:email_validator/email_validator.dart' as validator;
import 'buttonwidget/buttonwidget.dart';
import 'widgets/widgets.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class signpage extends StatefulWidget {
  const signpage({Key? key}) : super(key: key);

  @override
  State<signpage> createState() => signpageState();
}

class signpageState extends State<signpage> {
  final _formKey = GlobalKey<FormState>();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    final String docId = _usersCollection.doc().id;

    // Create a new document with the generated ID

    final DocumentReference documentReference = _usersCollection.doc(docId);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
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
                            controller: nameController,
                            labelText: 'Username',
                            hintText: 'Enter your User name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Username.';
                              }
                              return null; // Validation passed
                            },
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: passwordController,
                                  labelText: 'Password',
                                  hintText: 'Enter your Password',
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter your password.';
                                    }
                                    return null; // Validation passed

                                    // Validation logic...
                                  },
                                ),
                              ),
                              SizedBox(
                                  width:
                                      10), // Add some spacing between the text fields
                              Expanded(
                                child: CustomTextField(
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
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          CustomTextField(
                            controller: emailController,
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email.';
                              }
                              if (!validator.EmailValidator.validate(value)) {
                                return 'Please enter a valid email address.';
                              }
                              return null; // Validation passed
                            },
                          ),
                          SizedBox(height: 20),
                          CustomTextField(
                            controller: contactController,
                            labelText: 'Contact',
                            hintText: 'Enter your contact number',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your contact number.';
                              }
                              // You can add additional contact validation logic if needed
                              return null; // Validation passed
                            },
                          ),
                          SizedBox(height: 20),
                          CustomElevatedButton(
                            buttonText: 'login',
                            onPressed: () async {
                              try {
                                final email = emailController.text;
                                final password = passwordController.text;
                                final contact = contactController.text;
                                final name = nameController.text;
                                await documentReference.set({
                                  'Email': email,
                                  'Password': password,
                                  'Contact': contact,
                                  'Name': name,
                                });
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()),
                                );
                              } catch (e) {
                                _formKey.currentState!.validate();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
                ))));
  }
}
