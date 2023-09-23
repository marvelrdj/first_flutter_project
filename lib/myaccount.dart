import 'package:flutter/material.dart';
import 'package:sample/home.dart';

// ignore: unused_import
import 'login.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(154, 186, 234, 247),
          title: Text('My Account'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
          )),
    );
  }
}
