import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:network_request/model/person.dart';
const String randomPersonURL = "randomuser.me";

class PersonNetworkService {
  Future<List<Person>> fetchPersons(int amount) async {
    try {
      http.Response response = await http.get(Uri.https("$randomPersonURL", "api", {'results' : "$amount"}));

      print("response.statusCode, ${response.statusCode} ${response.request?.url}");
      if (response.statusCode == 200) {
        Map peopleData = jsonDecode(response.body);
        List<dynamic> peoples = peopleData["results"];
        return peoples.map((json) => Person.fromJson(json)).toList();
      } else {
        print("Something gone wrong, ${response.statusCode}");
        throw Exception("Something gone wrong, ${response.statusCode}");
      }
    } catch (e) {
      print("Something gone wrong, ${e} ${e}");
      throw Exception("Something gone wrong, ${e}");
    }

  }
}
