import 'package:http/http.dart' as http;
import 'dart:convert';



class Data {
  Future getData({var url}) async {
    
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsondata = jsonDecode(response.body);
      return jsondata;
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
