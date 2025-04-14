import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget{
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context){
    return const Padding(padding: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notiication 1'),
            subtitle: Text('This is the first notification'),
          ),
        ),
        Card(
          color: Color(0xFFe0f7fa),
          child: ListTile(
            leading: Icon(Icons.notifications), iconColor: Colors.red,
            title: Text('Notifcation 2'),
            subtitle: Text('This is the second notification'),
          ),
        )
      ],
    ),
    );
  }

}