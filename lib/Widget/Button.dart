import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.color,
    required this.function,
    required this.colorText,
    this.elevation = 0,
    this.start = 0,
    this.end = 0,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color color;
  final Color colorText;
  final double elevation;
  final Function() function;
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start,
        end: end,
      ),
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: elevation,
          minimumSize: const Size(double.infinity, 48),
        ),
      ),
    );
  }
}
