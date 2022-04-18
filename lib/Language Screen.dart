import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _language = 'E';

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
              'Select Language',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Color(0XFF434343),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,
              title: const Text(
                'English',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'E',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,

              title: const Text(
                'Spanish',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'S',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,
              title: const Text(
                'Portuguese',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'P',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,
              title: const Text(
                'العربية',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'A',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,
              title: const Text(
                'বাংলা',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'বাংলা',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,

              title: const Text(
                'हिन्दी',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'हिन्दी',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
            RadioListTile<String>(
              contentPadding: EdgeInsetsDirectional.zero,

              title: const Text(
                'Español',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0XFF434343),
                ),
              ),
              value: 'Español',
              groupValue: _language,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    _language = value;
                  });
                }
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
