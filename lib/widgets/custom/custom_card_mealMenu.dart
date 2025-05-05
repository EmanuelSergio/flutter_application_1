import 'package:flutter/material.dart';

class CustomCardMealmenu extends StatefulWidget {
  final String title;
  final String image;
  final double price;
  final int initialQuantity;

  const CustomCardMealmenu({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.initialQuantity,
  });

  @override
  State<CustomCardMealmenu> createState() => _CustomCardMealmenuState();
}

class _CustomCardMealmenuState extends State<CustomCardMealmenu> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                widget.image,
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      "5kg box of ${widget.title}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                    ),
                    Text(
                      '\$${widget.price.toStringAsFixed(2)}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
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
                          if (quantity > 0) quantity--;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Text("$quantity"),
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
            ],
          ),
        ),
      ),
    );
  }
}
