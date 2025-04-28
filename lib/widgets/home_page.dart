import 'package:App/widgets/custom/custom_burguer_Card.dart';
import 'package:App/widgets/custom/custom_card.dart';
import 'package:App/widgets/custom/custom_carousel.dart';
import 'package:App/widgets/custom/custom_food_card.dart';
import 'package:App/widgets/custom/custom_list_card.dart';
import 'package:App/widgets/custom/custom_mealMenu.dart';
import 'package:App/widgets/custom/custom_searchBar.dart';
import 'package:App/widgets/custom/foodMenu/FoodMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              CustomCarousel(
                  gap: 20,
                  height: 207,
                  showMultipleItems: true,
                  navigationDots: false,
                  cards: [
                    CustomFoodCard(),
                    CustomFoodCard(),
                    CustomFoodCard(),
                    CustomFoodCard(),
                    CustomFoodCard(),
                  ]),
              CustomMealmenu()
            ],
          ),
        ),
      ),
    );
  }
}
