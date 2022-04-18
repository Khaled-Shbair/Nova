import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
            Icons.close,
            color: Color(0XFFC5CCD6),
            size: 26,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: const Text(
              'Home',
              style: TextStyle(
                color: Color(0XFF474747),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: const Text(
              'My Account',
              style: TextStyle(
                color: Color(0XFF474747),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: const Text(
              'Cart',
              style: TextStyle(
                color: Color(0XFF474747),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: const Text(
              'Language',
              style: TextStyle(
                color: Color(0XFF474747),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
            ),
            child: const Text(
              'Settings',
              style: TextStyle(
                color: Color(0XFF474747),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            onPressed: () {},
          ),
          Image.asset('images/Menu.png'),

        ],
      ),
    );
  }
}
