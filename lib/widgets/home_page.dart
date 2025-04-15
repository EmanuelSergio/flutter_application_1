import 'package:App/food_card.dart';
import 'package:App/widgets/custom/custom_card.dart';
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
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomSearchbar(),
          ],
        ),
      ),
    );
  }
}
