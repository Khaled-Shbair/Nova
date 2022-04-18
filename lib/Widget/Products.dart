import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.quantity,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String price;
  final String quantity;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0XFF919191),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(height: 13),
            Text(
              quantity,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0XFF919191),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
