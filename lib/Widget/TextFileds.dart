import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    required this.label,
    required this.textInputType,
    Key? key,
  }) : super(key: key);

  final String label;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Color(0xFFC5CCD6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
