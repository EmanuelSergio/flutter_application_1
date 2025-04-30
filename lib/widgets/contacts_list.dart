import 'package:App/widgets/Pages/chat.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://gourmetjr.com.br/wp-content/uploads/2018/03/JPEG-image-B6230B799E47-1_1170x600_acf_cropped_490x292_acf_cropped.jpeg'),
          ),
          title: const Text('John Doe'),
          subtitle: const Text("pedido a camino"),
          trailing: const Icon(Icons.circle, color: Colors.green, size: 12),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Chat(),
            ),
          ),
        ),
      ],
    );
  }
}
