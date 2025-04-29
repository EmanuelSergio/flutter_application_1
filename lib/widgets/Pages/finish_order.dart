import 'package:App/main.dart';
import 'package:App/widgets/NavigationBarApp.dart';
import 'package:App/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class FinishOrder extends StatefulWidget {
  @override
  _FinishOrderState createState() => _FinishOrderState();
}

class _FinishOrderState extends State<FinishOrder> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset("assets/images/Success_Icon.png"),
                Text('Thank You!',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Text('Order Completed',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                Text('Please rate your last Driver',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              PannableRatingBar(
                rate: rating,
                items: List.generate(
                  5,
                  (index) => const RatingWidget(
                    selectedColor: Colors.yellow,
                    unSelectedColor: Colors.grey,
                    child: Icon(
                      Icons.star,
                      size: 48,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              )
            ]),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Leave feedback',
                    hintStyle:
                        TextStyle(color: Colors.grey), // Placeholder cinza
                    prefixIcon: Icon(
                      Icons.edit, // Ou Icons.edit_outlined
                      color: Colors.red, // Ícone vermelho
                    ),
                    filled: true,
                    fillColor: Colors.white, // Cor de fundo do input
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200), // Borda clara
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide:
                          BorderSide(color: Colors.red), // Borda ao focar
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => MainLayout()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(20, 2, 20, 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.redAccent,
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => MainLayout()));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(20, 2, 20, 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
