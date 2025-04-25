import 'package:App/widgets/messages_page.dart';
import 'package:flutter/material.dart';

class CustomMealmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 8, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Popular Meal Menu',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 20,
                      height: 0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MessagesPage()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "See all",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.black38,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Card(
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
            subtitle: Text(
              "5kg box of Pizza",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
            ),
            trailing: Text(
              '\$15',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.redAccent),
            ),
          ),
        ),
      ],
    );
  }
}
