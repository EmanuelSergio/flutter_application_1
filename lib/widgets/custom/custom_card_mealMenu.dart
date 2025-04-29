import 'package:flutter/material.dart';

class CustomCardMealmenu extends StatelessWidget {
  const CustomCardMealmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pizza.png",
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
                      'Pepper Pizza',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      "5kg box of Pizza",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                    ),
                    Text(
                      '\$15',
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
                        // Adicione a ação desejada aqui
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    child: Text("2"),
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
                        // Adicione a ação desejada aqui
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
