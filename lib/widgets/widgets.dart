import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final prefixIcon;
  final IconData? suffixIcon;
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  final TextEditingController controller;
  CustomTextField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      onChanged: (value) {},
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: Icon(widget.suffixIcon),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              )
            : null,
        labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
