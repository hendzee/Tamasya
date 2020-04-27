import 'package:flutter/material.dart';
import '../widgets/home_screen_popular_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, dynamic> mostVisitedPlaces = {
      'data': [
        {
          'title': 'Mt.Bromo',
          'image': 'assets/images/dummy/place1.jpg',
          'description': 'Lorem ipsum dolor sit amet, '
              + 'consectetur adipiscing elit. Praesent fermentum nisl quis dignissim gravida. '
                  + 'Integer vel leo gravida, blandit nibh pharetra, molestie ligula. '
                  + 'Nam ac metus quis sem molestie bibendum eu vel elit. '
        },
        {
          'title': 'Kuta Beach',
          'image': 'assets/images/dummy/place2.jpg',
          'description': 'Lorem ipsum dolor sit amet, '
              + 'consectetur adipiscing elit. Praesent fermentum nisl quis dignissim gravida. '
              + 'Integer vel leo gravida, blandit nibh pharetra, molestie ligula. '
              + 'Nam ac metus quis sem molestie bibendum eu vel elit. '
        },
        {
          'title': 'Borubudur Temple',
          'image': 'assets/images/dummy/place3.jpg',
          'description': 'Lorem ipsum dolor sit amet, '
              + 'consectetur adipiscing elit. Praesent fermentum nisl quis dignissim gravida. '
              + 'Integer vel leo gravida, blandit nibh pharetra, molestie ligula. '
              + 'Nam ac metus quis sem molestie bibendum eu vel elit. '
        }
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
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Tamasya', style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )),
                    Text('Let\'s take a trip', style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300
                    )),
                  ],
                ),
              ),
              Container(
                height: 380,
                margin: EdgeInsets.only(bottom: 15.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mostVisitedPlaces['data'].length,
                    itemBuilder: (context, index) {
                      return HomeScreenPopularCard(data: mostVisitedPlaces['data'][index]);
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                child: Text('Categories', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                width: double.infinity,
                height: 90,
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                padding: EdgeInsets.only(left: 15.0),
                child: Text('Beach'),
              )
            ],
          ),
        ),
      )
    );
  }
}
