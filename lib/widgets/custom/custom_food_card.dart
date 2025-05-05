import 'package:App/Data/Models/item_model.dart';
import 'package:App/Data/Services/api_service.dart';
import 'package:App/widgets/Pages/detail_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFoodCard extends StatefulWidget {
  final String id;
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
    required this.id,
    //required this.priceCents,
    this.onAddPressed,
  }) : super(key: key);

  @override
  State<CustomFoodCard> createState() => _CustomFoodCardState();
}

class _CustomFoodCardState extends State<CustomFoodCard> {
  final ApiService apiService = ApiService();
  late Future<Food> food;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    food = ApiService().getFoodById(widget.id);
  }

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
          onTap: () async {
            final FoodDetails = await apiService.getFoodById(widget.id);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailOrder(
                    food: FoodDetails,
                  ),
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
                        widget.rating.toString(),
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
                        widget.imagePath,
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
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        widget.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
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
                          text: "\$${widget.price.toStringAsFixed(0)}.",
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
                        onPressed: () {
                          apiService.addToCart(widget.id, 1);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.green,
                              content: Text(
                                'Pedido adicionado com sucesso!',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        },
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
