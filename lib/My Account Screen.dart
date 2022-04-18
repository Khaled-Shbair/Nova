import 'package:flutter/material.dart';

import 'Widget/Account.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsetsDirectional.only(start: 24),
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_backspace,
            color: Color(0XFFC5CCD6),
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Text(
              'Edit',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color(0XFF656565),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 24,
          end: 36,
          top: 15,
        ),
        child: ListView(
          children: const [
            Text(
              'My Account',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Account(
              title: 'Name',
               subtitle: 'Lafarg Jeone',
            ),
            Divider(),
            Account(
              title: 'Address',
               subtitle: '12/a Puran lane',
            ),
            Divider(),
            Account(
              title: 'City',
               subtitle: 'New Istanbul',
            ),
            Divider(),
            Account(
              title: 'Birthday',
               subtitle: 'Nov-21-1997',
            ),
            Divider(),
            Account(
              title: 'Gender',
              subtitle: 'Male',
            ),
            Divider(),
            Account(
              title: 'Email',
              subtitle: 'lafarge930@gmail.com',
            ),
            Divider(),
            Account(
              title: 'Phone Number',
              subtitle: '+889 0923 1334',
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
