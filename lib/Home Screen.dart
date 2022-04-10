import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Nova',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0XFF656565),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(
          color: Color(0XFF656565),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notes),
          ),
        ],
      ),
      body: ListView(
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
    );
  }
}
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
