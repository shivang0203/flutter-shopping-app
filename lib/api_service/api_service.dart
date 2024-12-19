import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_shopping_app/models/home_section.dart';

class ApiService {
  static const String _baseUrl =
      "https://polyjuice.kong.fampay.co/mock/famapp/feed/home_section/?slugs=famx-paypage";

  static Future<List<HomeSection>> fetchHomeSections() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((item) {
          try {
            return HomeSection.fromJson(item);
          } catch (e) {
            print('Error parsing item: $item');
            throw Exception('Error parsing item: $e');
          }
        }).toList();
      } else {
        throw Exception("Failed to load data");
      }
    } catch (e) {
      print('API Error: $e');
      throw Exception(e.toString());
    }
  }
}
