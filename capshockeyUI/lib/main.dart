import 'package:flutter/material.dart';
import 'splash.dart';
import 'profile.dart';

void main() async {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Caps Hockey",
   home: new Splash(),
   // home: new Profile(),
 //   home: new Splash(),    
  ));
}