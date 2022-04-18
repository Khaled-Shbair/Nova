import 'package:flutter/material.dart';

import 'Checkout Screen.dart';
import 'Language Screen.dart';
import 'My Account Screen.dart';
import 'Payment Screen.dart';
import 'models/Botton_NavigationBar_Item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<BottomNavigationBarItems> _BnItems = <BottomNavigationBarItems>[
    BottomNavigationBarItems(
        title: 'MyAccountScreen', widget: const MyAccountScreen()),
    BottomNavigationBarItems(
        title: 'PaymentScreen', widget: const PaymentScreen()),
    BottomNavigationBarItems(
        title: 'LanguageScreen', widget: const LanguageScreen()),
    BottomNavigationBarItems(
        title: 'CheckoutScreen', widget: const CheckoutScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _BnItems[_currentIndex].title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Visibility(
            visible:_currentIndex==3 ,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
      body: _BnItems[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellowAccent,
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}
/*
ListView(
        padding: const EdgeInsetsDirectional.all(10),
        children: [
          const Text(
            'Product',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: GridView.builder(
              itemBuilder: (context, index) {
                return const Card(color: Colors.blue);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'List',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            padding: const EdgeInsetsDirectional.only(
              top: 20,
              start: 10,
              end: 10,
              bottom: 20,
            ),
            itemBuilder: (context, index) {
              return const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('Dlom2000@gmail.com'),
                trailing: Icon(Icons.send),
              );
            },
          ),
        ],
      ),
*/
/*
 GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 132 / 214, // height/wight
            ),
            children: const [
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('Dlom2000@gmail.com'),
                trailing: Icon(Icons.send),
              ),
            ],
          ),
 */
/*
 ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('Dlom2000@gmail.com'),
              trailing: Icon(Icons.send),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black45,
            );
          },
          itemCount: 10),
 */
/*
 ListView.builder(
        itemCount: 10,
        padding: const EdgeInsetsDirectional.only(
          top: 20,
          start: 10,
          end: 10,
          bottom: 20,
        ),
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          );
        },
      ),
 */
/*

ListView(
        physics: const NeverScrollableScrollPhysics(),
        //       physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        reverse: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsetsDirectional.only(
          top: 20,
          start: 10,
          end: 10,
          bottom: 20,
        ),
        children: const [
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('Dlom2000@gmail.com'),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
 */
