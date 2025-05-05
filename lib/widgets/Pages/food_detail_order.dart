import 'package:App/Data/Services/api_service.dart';
import 'package:App/widgets/custom/custom_card_mealMenu.dart';
import 'package:App/widgets/custom/custom_total_account.dart';
import 'package:flutter/material.dart';

class FoodDetailOrder extends StatefulWidget {
  const FoodDetailOrder({super.key});

  @override
  State<FoodDetailOrder> createState() => _FoodDetailOrderState();
}

class _FoodDetailOrderState extends State<FoodDetailOrder> {
  final apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService();

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 13),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.redAccent,
                    ),
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
            Expanded(
                child: FutureBuilder<List<Map<String, dynamic>>>(
              future: apiService.getCarrinhoComFoods(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                }
                final carrinho = snapshot.data!;

                double subtotal = carrinho.fold(0, (sum, item) {
                  final double price = item["food"]["value"];
                  final int quantity = item["quantidade"];
                  return sum + (price * quantity);
                });

                double deliveryFee = 5.0; // Exemplo de taxa de entrega
                double discount = 0.0; // Exemplo de desconto
                double total = subtotal + deliveryFee - discount;

                return Column(
                  children: [
                    Expanded(
                        child: ListView(
                      children: [
                        ...carrinho.map((item) {
                          final food = item["food"];
                          return CustomCardMealmenu(
                            title: food["name"],
                            price: food["value"],
                            image: food["imageUrl"],
                            initialQuantity: item["quantidade"],
                          );
                        }).toList()
                      ],
                    )),
                    CustomTotalAccount(
                        subtotal: subtotal,
                        deliveryFee: deliveryFee,
                        discount: discount,
                        total: total)
                  ],
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
