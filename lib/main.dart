import 'package:flutter/material.dart';
import 'package:news_portal/Screens/ContaintScreen.dart';
import 'package:news_portal/Screens/Headlines.dart';
import 'package:news_portal/Screens/HomePage.dart';
import 'Screens/HomePage.dart';
import 'Utility/Provider.dart';
import 'package:provider/provider.dart';
import 'Screens/WebScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllThings(),
      child: MaterialApp(
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          HeadLines.id: (context) => HeadLines(),
          WebViewPage.id: (context) => WebViewPage(),
          ContaintScreen.id:(context)=>ContaintScreen(),
        },
      ),
    );
  }
}
