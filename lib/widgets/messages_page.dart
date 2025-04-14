import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context){
    final theme = Theme.of(context);
    return ListView.builder(
      reverse: true,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index){
        final isMe = index == 0;
        return Align(
          alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(8.0)
            ),
          child: Text(
            isMe ? 'Hello, how are you?' : 'I am fine, thank you!',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          ),
        );
      },
    );
  }
}