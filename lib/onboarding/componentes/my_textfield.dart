import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final String subtitle;
  bool obscureText = false;
  MyTextField({
    super.key,
    required this.title,
    required this.subtitle,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 30,
        right: 30,
        bottom: 8,
      ),
      child: Container(
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange.shade200,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            hintText: subtitle,
            hintStyle: TextStyle(
              color: Colors.grey[00],
            ),
            labelText: title,
            labelStyle: const TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
            // focusColor: Colors.amber,
            // fillColor: Colors.green.shade300,
            // filled: false,
          ),
        ),
      ),
    );
  }
}
