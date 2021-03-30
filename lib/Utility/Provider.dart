import 'package:flutter/cupertino.dart';
import 'Country.dart';
import 'Catagery.dart';

const String api = '8d6fd2283b4540de8a4f8a035c0d6b95';

class AllThings extends ChangeNotifier {
  List<Country> country = [
    Country(
        name: 'India',
        id: 'in',
        pic: AssetImage('assets/in.png'),
        url: Uri.https('newsapi.org', '/v2/top-headlines',
            {'country': 'in', 'apiKey': api})),
    Country(
        name: 'United States',
        id: 'us',
        pic: AssetImage('assets/us.png'),
        url: Uri.https('newsapi.org', '/v2/top-headlines',
            {'country': 'us', 'apiKey': api})),
    Country(
        name: 'China',
        id: 'ch',
        pic: AssetImage('assets/ch.png'),
        url: Uri.https('newsapi.org', '/v2/top-headlines',
            {'country': 'ch', 'apiKey': api})),
    Country(
        name: 'United Arab Emirats',
        id: 'ae',
        pic: AssetImage('assets/ae.png'),
        url: Uri.https('newsapi.org', '/v2/top-headlines',
            {'country': 'ae', 'apiKey': api})),
    Country(
        name: 'Indonesia',
        id: 'id',
        pic: AssetImage('assets/id.png'),
        url: Uri.https('newsapi.org', '/v2/top-headlines',
            {'country': 'id', 'apiKey': api})),
  ];
  int get length {
    return country.length;
  }

  List<Catagery> catagery = [
    Catagery(
      nameid: 'business',
      pic: AssetImage('assets/business.jpg'),
    ),
    Catagery(
      nameid: 'entertainment',
      pic: AssetImage('assets/Entertairment.jpeg'),
    ),
    Catagery(
      nameid: 'general',
      pic: AssetImage('assets/general.png'),
    ),
    Catagery(
      nameid: 'health',
      pic: AssetImage('assets/health.jpg'),
    ),
    Catagery(
      nameid: 'science',
      pic: AssetImage('assets/Science.jpg'),
    ),
    Catagery(
      nameid: 'sports',
      pic: AssetImage('assets/sports.jpg'),
    ),
    Catagery(
      nameid: 'technology',
      pic: AssetImage('assets/tech.jpg'),
    ),
  ];
  int get catlength {
    return catagery.length;
  }
}
