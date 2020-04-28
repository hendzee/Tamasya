import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 35.0),
        decoration: BoxDecoration(color: Colors.white),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 0.0),
              borderRadius: BorderRadius.circular(30.0)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 0.0),
                borderRadius: BorderRadius.circular(30.0)
            ),
            hintText: 'Find beautiful places here...',
            suffixIcon: Icon(EvaIcons.searchOutline, color: Colors.grey,),
            contentPadding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 15.0)
          ),
          onTap: null,
        ),
      ),
    );
  }
}
