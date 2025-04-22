import 'package:flutter/material.dart';

class CustomListCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;

  const CustomListCard(
      {super.key,
      required this.title,
      required this.icon,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 160,
        child: Card(
          color: isSelected ? Colors.redAccent : Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  size: 30,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                ),
              ),
            ],
          ),
        ));
  }
}
