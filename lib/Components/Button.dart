import 'package:flutter/material.dart';
import 'package:news_portal/Utility/DataFile.dart';
import 'package:news_portal/Screens/Headlines.dart';
// import 'package:news_portal/Utility/TileMaker.dart';
import 'package:news_portal/Utility/Country.dart';

class EButton extends StatelessWidget {
  final Country c;
  EButton({this.c});
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      elevation: 10.0,
      
      child: TextButton(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: c.pic, fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              c.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                shadows: [],
              ),
            ),
          ),
        ),
        onPressed: () async {
          var data = await Data().getData(url: c.url);
          Navigator.pushNamed(
            context,
            HeadLines.id,
            arguments: HeadLines(
              ls: data['articles'],
            ),
          );
        },
      ),
    );
  }
}
