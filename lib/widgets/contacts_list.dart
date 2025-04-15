import 'package:App/widgets/custom/custom_contact_notification.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomContactNotification(
          name: "name",
          messages: 2,
          lastMessage: "astMessage",
          imageUrl: null,
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          leading: CircleAvatar(
            child: Text('A'),
          ),
          title: Text("Amanda"),
          subtitle: Text("hello babe"),
          trailing: Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green),
              Text(
                "2",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
