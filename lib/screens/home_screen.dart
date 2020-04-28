import 'package:flutter/material.dart';
import '../widgets/home_screen_popular_card.dart';
import '../widgets/home_screen_category_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Data dummy for most visited places
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

  // Data dummy for category list
  final Map<String, dynamic> categories = {
    'data': [
      { 'title': 'City', 'image': 'assets/images/app/category1.png' },
      { 'title': 'Mountain', 'image': 'assets/images/app/category2.png' },
      { 'title': 'Village', 'image': 'assets/images/app/category3.png' },
      { 'title': 'Beach', 'image': 'assets/images/app/category4.png' },
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
                margin: EdgeInsets.only(bottom: 15.0),
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: categories['data'].length,
                  itemBuilder: (context, index) {
                    return HomeScreenCategoryCard(
                        title: categories['data'][index]['title'],
                        image: categories['data'][index]['image']
                    );
                  }
              ),
            ],
          ),
        ),
      )
    );
  }
}
