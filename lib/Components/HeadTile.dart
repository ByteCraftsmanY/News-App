import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_portal/Screens/WebScreen.dart';

class HeadTile extends StatelessWidget {
  final String image;
  final String post;
  final String author;
  final String title;
  final String content;
  HeadTile({this.author, this.image, this.post, this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          WebViewPage.id,
          arguments: WebViewPage(
            site: post,
          ),
        );
      },
      child: Card(
        elevation: 10,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        semanticContainer: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  if (image != null)
                    Image.network(
                      image,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null)
                          return child;
                        else {
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          );
                        }
                      },
                    ),
                  if (author != null)
                    Text(
                      'author : $author',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white10,
                          fontSize: 12.0),
                    ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0,
                ),
              ),
              if (content != null)
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                  child: Text(
                    content,
                    style: TextStyle(color: Colors.black87),
                    maxLines: 2,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
