import 'package:flutter/material.dart';

import 'Widget/Button.dart';
import 'Widget/DetailsOrder.dart';
import 'Widget/rectangle Visa.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Color(0XFFC5CCD6),
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(
              start: 24,
              top: 15,
            ),
            child: Text(
              'Payment',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 170,
            width: 260,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20.3,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '1234    5678    9876    5432',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        '1234',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 7,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Lafarge Jeone',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 64.3),
                          Column(
                            children: const [
                              Text(
                                'VALID',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 4,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'THRU',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 4,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8.3),
                          const Text(
                            '03/17',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0XFF2BDA8E),
                        Color(0XFF0CC6B7),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 12.6,
                childAspectRatio: 152.55 / 243.53,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RectangleVisa(),
              SizedBox(width: 11.2),
              RectangleVisa(),
              SizedBox(width: 11.2),
              RectangleVisa(),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 24,
              end: 36,
              top: 15,
            ),
            child: Column(
              children: [
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
        ],
      ),
    );
  }
}
