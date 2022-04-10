import 'package:flutter/material.dart';

import 'Widget/Button.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0XFF434343),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Enjoy the experience.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0XFF919191),
            ),
          ),
          const SizedBox(height: 64),
          Image.asset('images/Group 2166.png'),
          Button(
            start: 50,
            end: 50,
            text: 'Login',
            colorText: const Color(0XFFFBFBFB),
            color: const Color(0XFFFB5895),
            function: () {
              Navigator.pushNamed(context, '/LoginScreen');
            },
          ),
          const SizedBox(height: 20),
          Button(
            start: 50,
            end: 50,
            text: 'Signup',
            colorText: const Color(0XFF323643),
            color: Colors.transparent,
            function: () {
              Navigator.pushNamed(context, '/SignUpScreen');
            },
          ),
        ],
      ),
    );
  }
}
