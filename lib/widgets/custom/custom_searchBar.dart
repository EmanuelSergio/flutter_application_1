import 'package:flutter/material.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 10,
      child: TextField(
        obscureText: true,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          labelText: 'Search',
        ),
      ),
    );
  }
}
