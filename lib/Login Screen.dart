import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Widget/Button.dart';
import 'Widget/TextFileds.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigateToRegister;
  }

  void _navigateToRegister() => Navigator.pushNamed(context, '/SignUpScreen');

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

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
        child: ListView(
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(height: 60),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'Email',
            ),
            const SizedBox(height: 21),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                label: const Text('Password'),
                labelStyle: const TextStyle(
                  color: Color(0xFFC5CCD6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_rounded)),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Button(
              text: 'Login',
              colorText: const Color(0XFFFBFBFB),
              color: const Color(0XFFFB5895),
              function: () {},
            ),
            const SizedBox(height: 23),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account ?  ',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF848484),
                  ),
                  children: [
                    TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: 'Sign Up',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF6D6D6D),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
