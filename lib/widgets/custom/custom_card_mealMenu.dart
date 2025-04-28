import 'package:flutter/material.dart';

class CustomCardMealmenu extends StatelessWidget {
  const CustomCardMealmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
            leading: Image.asset(
              "assets/images/pizza.png",
              fit: BoxFit.cover,
            ),
            title: Text(
              'Pepper Pizza',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5kg box of Pizza",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26),
                ),
                Text(
                  '\$15',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.redAccent),
                ),
              ],
            ),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    icon: Icon(
                      Icons.add,
                      size: 15,
                    ),
                    onPressed: () {
                      // Adicione a ação desejada aqui
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
