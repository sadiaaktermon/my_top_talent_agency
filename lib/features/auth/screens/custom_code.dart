import 'package:flutter/material.dart';

class CustomCode extends StatelessWidget {
  final double width;
  final double height;
  final TextEditingController? controller;

  const CustomCode({
    super.key,
    this.width = 40,
    this.height = 40,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          maxLength: 1,
          style: TextStyle(
            fontSize: 21,
            height: 1,
          ),
          decoration: InputDecoration(
            counterText: "",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
