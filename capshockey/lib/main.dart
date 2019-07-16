//import 'dart:collection';

import 'package:flutter/material.dart'; 
//import 'profile.dart';
//import 'events.dart';
import 'dashboard.dart';
import 'friends_list_page.dart';
//import 'login_signup_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'CAPS Hockey Club';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         theme: new ThemeData(
         primarySwatch: Colors.teal,
       ),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  //List<charts.Series> seriesList = new List();

  int i = 0;

  var pages = [
    new Dashboard(),
    new Dashboard(),
    new FriendsListPage(),
    new Dashboard(),
    ];

  void _onItemTapped(int index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[700],
      //   title: const Text('CAPS Hockey Club'),
      // ),
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Members'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),

        ],
        currentIndex: i,
        selectedItemColor: Colors.amber[900],
        //unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
