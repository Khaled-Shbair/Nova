import 'package:flutter/material.dart';

import 'Widget/Button.dart';
import 'Widget/TextFileds.dart';

class CreateAddressScreen extends StatefulWidget {
  const CreateAddressScreen({Key? key}) : super(key: key);

  @override
  State<CreateAddressScreen> createState() => _CreateAddressScreenState();
}

class _CreateAddressScreenState extends State<CreateAddressScreen> {
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
              'Create Address',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(height: 30),
            const TextFields(
              textInputType: TextInputType.text,
              label: 'Full Name',
            ),
            const SizedBox(height: 20),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'Address lane',
            ),
            const SizedBox(height: 20),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'City',
            ),
            const SizedBox(height: 20),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'State',
            ),
            const SizedBox(height: 20),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'Postal Code',
            ),
            const SizedBox(height: 20),
            const TextFields(
              textInputType: TextInputType.emailAddress,
              label: 'Phone Number',
            ),
            const SizedBox(height: 96),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Button(
                text: 'Add To Address',
                colorText: const Color(0XFFFBFBFB),
                color: const Color(0XFFFB5895),
                function: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
