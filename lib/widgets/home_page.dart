import 'package:App/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    final theme = Theme.of(context);
    return Card(
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text("Home Page", style: theme.textTheme.titleLarge,),
          const SizedBox(height: 16.0),
          CustomCard(title: "title", subtitle: "subtitle", icon: Icons.account_balance_sharp)
         ],
        ),
      ),
    );
  }

}