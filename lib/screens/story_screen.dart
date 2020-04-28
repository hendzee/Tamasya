import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
