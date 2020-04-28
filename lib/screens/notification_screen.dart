import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
