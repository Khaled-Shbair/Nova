import 'package:flutter/material.dart';

import 'Checkout Screen.dart';
import 'CreateAddress Screen.dart';
import 'First Screen.dart';
import 'Home Screen.dart';
import 'Login Screen.dart';
import 'Sign up Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/CheckoutScreen',
      routes: {
        '/WelcomeScreen': (context) => const FirstScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/SignUpScreen': (context) => const SignUpScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/CreateAddressScreen': (context) => const CreateAddressScreen(),
        '/CheckoutScreen': (context) => const CheckoutScreen(),
      },
    );
  }
}
