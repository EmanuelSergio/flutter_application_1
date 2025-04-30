import 'package:App/Data/Models/item_model.dart';
import 'package:App/Data/Services/api_service.dart';
import 'package:App/widgets/custom/custom_burguer_Card.dart';
import 'package:App/widgets/custom/custom_carousel.dart';
import 'package:App/widgets/custom/custom_food_card.dart';
import 'package:App/widgets/custom/custom_mealMenu.dart';
import 'package:App/widgets/custom/custom_searchBar.dart';
import 'package:App/widgets/custom/foodMenu/FoodMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService apiService = ApiService();
  late Future<List<Food>> foodList;

  @override
  void initState() {
    super.initState();
    foodList = apiService.fetchFood();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchbar(),
              const SizedBox(
                height: 20,
              ),
              CustomCarousel(
                cards: [
                  CustomBurguerCard(),
                  CustomBurguerCard(),
                  CustomBurguerCard()
                ],
              ),
              Foodmenu(),
              const SizedBox(
                height: 20,
              ),
              FutureBuilder<List<Food>>(
                  future: foodList,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Text("No data available");
                    } else {
                      final items = snapshot.data!;
                      return CustomCarousel(
                        gap: 20,
                        height: 207,
                        showMultipleItems: true,
                        navigationDots: false,
                        cards: items.map((item) {
                          return CustomFoodCard(
                            title: item.name,
                            description: item.description,
                            imagePath: item.imageUrl,
                            rating: item.rating,
                            price: item.value,
                          );
                        }).toList(),
                      );
                    }
                  }),
              CustomMealmenu()
            ],
          ),
        ),
      ),
    );
  }
}
