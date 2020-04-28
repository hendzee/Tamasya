import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreenPopularCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  HomeScreenPopularCard({ this.title, this.image, this.description });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 15.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: <Widget>[
                    Image(
                      image: AssetImage(image),
                      height: 200,
                      width: 280,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                        ),
                        child: Text('Popular', style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(title, style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      )),
                      Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 20.0),
                          SizedBox(width: 5.0,),
                          Text('110K'),
                          SizedBox(width: 10.0,),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text('By Virginia at 20 Feb, 2020', style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.black26,
                    )),
                  ),
                  Text(description)
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              width: 280,
            )
          ],
        ),
      ],
    );;
  }
}
