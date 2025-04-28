import 'package:App/widgets/custom/custom_card_mealMenu.dart';
import 'package:flutter/material.dart';

class FoodDetailOrder extends StatelessWidget {
  const FoodDetailOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Order detail",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            CustomCardMealmenu()
          ],
        ),
      ),
    );
  }
}
