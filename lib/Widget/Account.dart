import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      color: Colors.transparent,
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(
          start: 0,
          top: 0,
          bottom: 0,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0XFF919191),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0XFF434343),
          ),
        ),
      ),
    );
  }
}
