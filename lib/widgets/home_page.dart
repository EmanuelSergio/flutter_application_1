import 'package:App/food_card.dart';
import 'package:App/widgets/custom/custom_burguer_Card.dart';
import 'package:App/widgets/custom/custom_card.dart';
import 'package:App/widgets/custom/custom_carousel.dart';
import 'package:App/widgets/custom/custom_list_card.dart';
import 'package:App/widgets/custom/custom_searchBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchbar(),
            CustomCarousel(
              cards: [
                CustomBurguerCard(),
                CustomBurguerCard(),
                CustomBurguerCard()
              ],
            ),
            CustomCarousel(
              height: 60,
              showMultipleItems: true,
              cards: [
                CustomListCard(
                  title: "Burger",
                  icon: Icons.fastfood,
                ),
                CustomListCard(
                  title: "Tacos",
                  icon: Icons.local_dining,
                ),
                CustomListCard(title: "Pasta", icon: Icons.dining),
                CustomListCard(title: "Salad", icon: Icons.emoji_food_beverage),
                CustomListCard(title: "Steak", icon: Icons.restaurant),
              ],
            )
          ],
        ),
      ),
    );
  }
}
