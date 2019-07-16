import 'package:flutter/material.dart';
import 'colors.dart';
import 'splash.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Barad's Portfolio",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: priCol,
          title: Text("Barad's Portfolio"),
          centerTitle: true,
        ),
        body: Center(
          child: new HomeList(),
        ),
      ),
    );
  }
}

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: aboCol),
          title: Text('About me'),
          subtitle: Text('Basic info about me'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),
        //  Padding(padding: new EdgeInsets.all(5.0)),

        ListTile(
          leading: Icon(Icons.chrome_reader_mode, color: magCol),
          title: Text('Magazine'),
          subtitle: Text('Magazine mockup'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),

        ListTile(
          leading: Icon(Icons.map, color: mapCol),
          title: Text('Google Maps'),
          subtitle: Text('Google Maps Beta'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),

        ListTile(
          leading: Icon(Icons.timer, color: pomCol),
          title: Text('Pomodoro'),
          subtitle: Text('Simple Pomodoro timer'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),

        ListTile(
          leading: Icon(Icons.accessibility, color: bmiCol),
          title: Text('BMI Calculator'),
          subtitle: Text('Simple BMI calculator'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite, color: camCol),
          title: Text('Camera'),
          subtitle: Text('Using Camera API'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen()),
            );
          },
        ),
      ],
    );
  }
}
