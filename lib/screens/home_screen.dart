import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, dynamic> mostVisitedPlaces = {
      'data': [
        { 'name': 'Mt.Bromo', 'image': 'assets/images/dummy/place1.jpg' },
        { 'name': 'Kuta Beach', 'image': 'assets/images/dummy/place2.jpg' },
        { 'name': 'Borubudur Temple', 'image': 'assets/images/dummy/place3.jpg' }
      ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Yuk', style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300
                    )),
                    Text('Tamasya', style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ))
                  ],
                ),
              ),
              Container(
                height: 500,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mostVisitedPlaces['data'].length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Container(
                              child: Image(
                                image: AssetImage(mostVisitedPlaces['data'][index]['image']),
                                fit: BoxFit.cover,
                              ),
                              height: 200,
                              width: 290,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          )
                        ],
                      );
                    }
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
