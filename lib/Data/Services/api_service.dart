import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:App/Data/Models/item_model.dart';

class ApiService {
  static const String baseUrl = "http://172.20.203.85:3000";

  Future<List<Food>> getAllFoods() async {
    final response = await http.get(Uri.parse('$baseUrl/foods'));

    try {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Food.fromJson(json)).toList();
    } on Exception catch (e) {
      log("Error fetching food: $e");
      rethrow;
    }
  }

  Future<Food> getFoodById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/foods?id=$id'));

    try {
      final List<dynamic> data = jsonDecode(response.body);
      return Food.fromJson(data.first);
    } on Exception catch (e) {
      log("Error fetching food: $e");
      rethrow;
    }
  }

  Future<List<Food>> getFoodCategory(int category) async {
    final response =
        await http.get(Uri.parse('$baseUrl/foods?categoryId=$category'));

    try {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Food.fromJson(json)).toList();
    } on Exception catch (e) {
      log("Error fetching food: $e");
      rethrow;
    }
  }
}
