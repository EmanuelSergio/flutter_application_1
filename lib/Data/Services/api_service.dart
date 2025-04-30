import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:App/Data/Models/item_model.dart';

class ApiService {
  static const String baseUrl = "http://172.20.202.102:3000";

  Future<List<Food>> fetchFood() async {
    final response = await http.get(Uri.parse('$baseUrl/foods'));

    try {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Food.fromJson(json)).toList();
    } on Exception catch (e) {
      log("Error fetching food: $e");
      rethrow;
    }
  }
}
