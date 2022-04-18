import 'package:flutter/material.dart';
import 'package:moma/Widget/Button.dart';

import 'Widget/DetailsOrder.dart';
import 'Widget/Products.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsetsDirectional.only(start: 24),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_backspace,
            color: Color(0XFFC5CCD6),
            size: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 24,
          end: 36,
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Checkout',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(height: 30),
            const Products(
              title: 'Girl white watch',
              subtitle: 'Session In.',
              price: '\$50.00',
              quantity: 'Quantity : 2',
              image: 'images/Watch.png',
            ),
            const SizedBox(height: 20),
            const Products(
              title: 'Man long t shirt',
              subtitle: 'Session In.',
              price: '\$50.00',
              quantity: 'Quantity : 1',
              image: 'images/Watch.png',
            ),
            const SizedBox(height: 22),
            const DetailsOrder(
              Subtotal: 'Subtotal',
              price: '\$250.00',
            ),
            const SizedBox(height: 13),
            const DetailsOrder(
              Subtotal: 'Discount',
              price: '3%',
            ),
            const SizedBox(height: 13),
            const DetailsOrder(
              Subtotal: 'Shipping',
              price: '\$25',
            ),
            const SizedBox(height: 14),
            const Divider(
              color: Color(0XFFE1E3E8),
              thickness: 2,
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF585B5E),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$285.00',
                  style: TextStyle(
                    color: Color(0xFF434343),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 30,
              ),
              child: Button(
                text: 'Buy',
                color: const Color(0XFFFF4F9A),
                function: () {},
                colorText: const Color(0XFFFBFBFB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
