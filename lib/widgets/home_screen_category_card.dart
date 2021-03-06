import 'package:flutter/material.dart';

class HomeScreenCategoryCard extends StatelessWidget {
  final String title;
  final String image;

  HomeScreenCategoryCard({ this.title, this.image });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage(image),
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0,),
                  Text(title, style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
