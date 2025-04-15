import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({super.key});

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
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 35,
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
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.person,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
