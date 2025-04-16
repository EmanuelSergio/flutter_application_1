import 'package:flutter/material.dart';

class CustomBurguerCard extends StatelessWidget {
  const CustomBurguerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Special Offer for March',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    'We are here with the best\ndeserts in town.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 8),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 2, 20, 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              child: Image.asset(
                "assets/images/burguer.png",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
