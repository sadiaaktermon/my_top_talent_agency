import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;

  const CustomTextfield({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,  // Set the hintText from the constructor
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Remove const
        ),
      ),
    );
  }
}
