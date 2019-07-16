import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        backgroundColor: Colors.blue[700],
        title: const Text('Dashboard'),
      ),

      body: new Calendar(isExpandable: true),

    );
  }
}
