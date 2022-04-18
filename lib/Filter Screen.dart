import 'package:flutter/material.dart';
import 'package:moma/Widget/Button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

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
          end: 36,
          top: 15,
        ),
        child: ListView(
          children: [
            const Text(
              'Filter',
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
                'New',
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
                'Used',
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
                'Boys',
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
                'Girls',
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
            const SizedBox(
              height: 60,
            ),
            Button(
              text: 'Filter',
              color: Color(0XFFFF4F9A),
              function: () {},
              colorText: const Color(0XFFFBFBFB),
            ),
          ],
        ),
      ),
    );
  }
}
