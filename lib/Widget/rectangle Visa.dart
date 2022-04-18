import 'package:flutter/material.dart';
class RectangleVisa extends StatelessWidget {
  const RectangleVisa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 4,
      decoration: BoxDecoration(
        color: const Color(0XFFB4B4B4),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
// Color(0XFF818181),