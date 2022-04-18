import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;

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
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 24,
          end: 24,
          top: 15,
        ),
        child: ListView(
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            SwitchListTile(
              activeColor: const Color(0XFF3ACCE1),
              contentPadding: const EdgeInsetsDirectional.only(
                top: 30,
              ),
              title: const Text(
                'Email Notifications',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF656565),
                ),
              ),
              value: _value1,
              onChanged: (value) {
                setState(() {
                  _value1 = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeColor: const Color(0XFF3ACCE1),
              contentPadding: const EdgeInsetsDirectional.all(0),
              title: const Text(
                'Push Notifications',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF656565),
                ),
              ),
              value: _value2,
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeColor: const Color(0XFF3ACCE1),
              contentPadding: const EdgeInsetsDirectional.all(0),
              title: const Text(
                'Order Updates',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF656565),
                ),
              ),
              value: _value3,
              onChanged: (value) {
                setState(() {
                  _value3 = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeColor: const Color(0XFF3ACCE1),
              contentPadding: const EdgeInsetsDirectional.all(0),
              title: const Text(
                'Seller Info',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF656565),
                ),
              ),
              value: _value4,
              onChanged: (value) {
                setState(() {
                  _value4 = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              activeColor: const Color(0XFF3ACCE1),
              contentPadding: const EdgeInsetsDirectional.all(0),
              title: const Text(
                'Newsletter',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF656565),
                ),
              ),
              value: _value5,
              onChanged: (value) {
                setState(() {
                  _value5 = value;
                });
              },
            ),
            const Divider(),
            Card(
              elevation: 0,
              margin: const EdgeInsetsDirectional.all(0),
              color: Colors.transparent,
              child: ListTile(
                contentPadding: const EdgeInsetsDirectional.all(0),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF656565),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            const Divider(),
            Card(
              elevation: 0,
              margin: const EdgeInsetsDirectional.all(0),
              color: Colors.transparent,
              child: ListTile(
                contentPadding: const EdgeInsetsDirectional.all(0),
                title: const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF656565),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
