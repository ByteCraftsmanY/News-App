import 'package:flutter/material.dart';
import 'package:news_portal/Components/HeadTile.dart';

class HeadLines extends StatelessWidget {
  static String id = 'Headlines';
  final List<dynamic> ls;
  HeadLines({this.ls});
  @override
  Widget build(BuildContext context) {
    final HeadLines args = ModalRoute.of(context).settings.arguments;
    HeadLines(
      ls: args.ls,
    );
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, i) {
            return HeadTile(
              author: args.ls[i]['author'],
              title: args.ls[i]['title'],
              image: args.ls[i]['urlToImage'],
              post: args.ls[i]['url'],
              content: args.ls[i]['content'],
            );
          },
          itemCount: args.ls.length,
        ),
      ),
    );
  }
}
