import 'package:flutter/material.dart';

class ContaintScreen extends StatelessWidget {
  static String id = 'ContaintScreen';
  final String imageurl;
  final String posturl;
  final String containt;
  ContaintScreen({this.imageurl, this.containt, this.posturl});
  @override
  Widget build(BuildContext context) {
    final ContaintScreen args = ModalRoute.of(context).settings.arguments;

    return SafeArea(
          child: Scaffold(
        body: CustomScrollView(
          controller: ScrollController(
            keepScrollOffset: true,
          ),
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: false,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(title: Image.network(args.imageurl,fit: BoxFit.fill,),),
            
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: Scrollbar(
                child: Text(
                  args.containt,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
