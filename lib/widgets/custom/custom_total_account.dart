import 'package:App/widgets/Pages/finish_order.dart';
import 'package:flutter/material.dart';

class CustomTotalAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
                'assets/images/Pattern.png'), // Substitua pelo caminho da sua imagem
            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o container
          ),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Sub-Total"), Text("100\$")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Delivery Charge"), Text("10\$")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Discount"), Text("10\$")],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontWeight: FontWeight.w900)),
                  Text(
                    "110\$",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => FinishOrder()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 2, 20, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Place my Order',
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
        ));
  }
}
