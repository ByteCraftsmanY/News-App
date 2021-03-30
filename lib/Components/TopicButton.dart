import 'package:flutter/material.dart';

class Hbutton extends StatelessWidget {
  final String name;
  final String title;
  Hbutton({this.name, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(name),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            shape: BoxShape.rectangle),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
