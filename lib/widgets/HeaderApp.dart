import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  final VoidCallback onMenuPressed;
  const HeaderApp({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.transparent,
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onMenuPressed,
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                "Freedom way, Lekki phase",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Add your onTap logic here
            },
            child: CircleAvatar(
              radius: 15, // Adjust the radius as needed
              backgroundImage: NetworkImage(
                  "https://img2.lovecell.com.br/8e19bd91f085fec00e54e7613ce3bccae6765ddc390da7efbb24af99c8a65910.webp"), // Replace with your image path
            ),
          ),
        ],
      ),
    );
  }
}
