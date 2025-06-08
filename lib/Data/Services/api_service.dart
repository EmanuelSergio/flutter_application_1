import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:App/Data/Models/item_model.dart';

class ApiService {
  // static const String baseUrl = "http://10.0.2.2:3000";
  // static const String baseUrl = "http://172.20.203.241:3000";
  static const String baseUrl = "http://192.168.2.10:3000";

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

  Future<Food> getFoodById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/foods?id=$id'));

    try {
      final List<dynamic> data = jsonDecode(response.body);
      return Food.fromJson(data.first);
    } on Exception catch (e) {
      log("Error fetching food: $e");
      rethrow;
    }
  }

  Future<void> addToCart(String foodId, int quantity) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/carrinho'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'foodId': foodId,
          'quantity': quantity,
        }),
      );
    } catch (e) {
      log("Error adding to cart: $e");
    }
  }

  Future<List<Map<String, dynamic>>> getCarrinhoComFoods() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/carrinho'));
      final List<dynamic> carrinho = jsonDecode(response.body);
      List<Map<String, dynamic>> resultado = [];

      for (var item in carrinho) {
        final foodResponse =
            await http.get(Uri.parse('$baseUrl/foods?id=${item["foodId"]}'));
        final List<dynamic> foodList = jsonDecode(foodResponse.body);
        if (foodList.isNotEmpty) {
          resultado.add({
            "quantidade": item["quantity"],
            "idCarrinho": item["id"],
            "food": foodList.first
          });
        }
      }
      return resultado;
    } catch (e) {
      log("Error fetching carrinho: $e");
    }
    return [];
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
