import 'package:flutter/material.dart';

import 'Checkout Screen.dart';
import 'CreateAddress Screen.dart';
import 'Filter Screen.dart';
import 'First Screen.dart';
import 'Home Screen.dart';
import 'Language Screen.dart';
import 'Login Screen.dart';
import 'Menu Screen.dart';
import 'My Account Screen.dart';
import 'Payment Screen.dart';
import 'Settings Screen.dart';
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
      initialRoute: '/FilterScreen',
      routes: {
        '/WelcomeScreen': (context) => const FirstScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/SignUpScreen': (context) => const SignUpScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/CreateAddressScreen': (context) => const CreateAddressScreen(),
        '/CheckoutScreen': (context) => const CheckoutScreen(),
        '/PaymentScreen': (context) => const PaymentScreen(),
        '/MenuScreen': (context) => const MenuScreen(),
        '/MyAccountScreen': (context) => const MyAccountScreen(),
        '/LanguageScreen': (context) => const LanguageScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/FilterScreen': (context) => const FilterScreen(),
      },
    );
  }
}
