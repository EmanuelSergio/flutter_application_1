import 'package:App/widgets/Pages/detail_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFoodCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final double rating;
  final double price;
  // final double priceCents;
  final VoidCallback? onAddPressed;

  const CustomFoodCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.rating,
    required this.price,
    //required this.priceCents,
    this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 160,
        child: Container(
            child: InkWell(
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailOrder(),
                ));
          },
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
                        rating.toString(),
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
                      Image.network(
                        imagePath,
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
                        title,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        description.length > 45
                            ? '${description.substring(0, 40)}...'
                            : description,
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
                          text: "\$${price.toStringAsFixed(0)}.",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.redAccent),
                          children: [
                            TextSpan(
                              text: "99",
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
                        onPressed: onAddPressed,
                        icon: Icon(
                          Icons.add_circle_outlined,
                          color: Colors.redAccent,
                          size: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
