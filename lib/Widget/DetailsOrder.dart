import 'package:flutter/material.dart';

class DetailsOrder extends StatelessWidget {
  const DetailsOrder({
    required this.Subtotal,
    required this.price,
    Key? key,
  }) : super(key: key);

  final String Subtotal;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Subtotal,
          style: const TextStyle(
            color: Color(0xFF919191),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
         price,
          style: const TextStyle(
            color: Color(0xFF434343),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
