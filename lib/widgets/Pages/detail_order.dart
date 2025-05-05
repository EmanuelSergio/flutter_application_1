import 'package:App/Data/Models/item_model.dart';
import 'package:App/Data/Services/api_service.dart';
import 'package:App/widgets/Pages/food_detail_order.dart';
import 'package:flutter/material.dart';

class DetailOrder extends StatefulWidget {
  final Food food;
  const DetailOrder({super.key, required this.food});

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  final ApiService apiService = ApiService();
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.only(top: 28),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Image.network(
                widget.food.imageUrl ?? "",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Text(
                            "Popular",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontSize: 15,
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.location_on,
                                  color: Colors.redAccent),
                            ),
                            SizedBox(width: 7),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.favorite, color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            widget.food.name ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                ),
                            overflow: TextOverflow.clip,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_half,
                                color: Colors.amber,
                              ),
                              Text(
                                "${widget.food.rating ?? ''} Rating",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontSize: 15,
                                      color: Colors.black.withOpacity(0.2),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.shopping_bag,
                                color: Colors.redAccent,
                              ),
                              Text(
                                "${widget.food.ordersCount ?? '7000'}+ Order",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontSize: 15,
                                      color: Colors.black.withOpacity(0.2),
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      widget.food.details ??
                          "In a medium bowl, add ground chicken, breadcrumbs, mayonnaise, onions, parsley, garlic, paprika, salt and pepper. Use your hands to combine all the ingredients together until blended, but don't over mix.",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 16),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.redAccent.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.redAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (quantity > 0) {
                                      quantity--;
                                    }
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "$quantity",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              if (quantity == 0) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.redAccent,
                                    content: Text(
                                      'Please select a quantity',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                                return;
                              }
                              apiService.addToCart(widget.food.id, quantity);
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => FoodDetailOrder()));
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.fromLTRB(20, 2, 20, 5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              backgroundColor: Colors.redAccent,
                            ),
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),
        );
      },
    ));
  }
}
