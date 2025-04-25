import 'package:flutter/material.dart';

class DetailOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/burgerDetail.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
                child: Column(
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
                          spacing: 7,
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
                            "Chicken Burger Promo Pack",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                ),
                            overflow:
                                TextOverflow.clip, // or TextOverflow.ellipsis
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
                                "4,8 Rating",
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
                                "7000+ Order",
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
                      "In a medium bowl, add ground chicken, breadcrumbs, mayonnaise, onions, parsley, garlic, paprika, salt and pepper. Use your hands to combine all the ingredients together until blended, but don't over mix.",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
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
              )
            ],
          )
        ],
      ),
    );
  }
}
