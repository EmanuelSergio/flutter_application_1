import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 160,
        child: Container(
            child: Card(
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 5),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: CupertinoColors.systemYellow,
                    ),
                    Text(
                      '3.8',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/burguer2.png',
                      width: 87,
                      height: 70,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chicken burger',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      '100 gr chicken + tomato + cheese  Lettuce',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.black38,
                          fontWeight: FontWeight.w900,
                          fontSize: 10),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "\$20.",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),
                        children: [
                          TextSpan(
                            text: "50",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outlined),
                      color: Colors.redAccent,
                      iconSize: 30,
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
