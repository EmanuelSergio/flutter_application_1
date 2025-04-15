import 'package:flutter/material.dart';

class CustomContactNotification extends StatelessWidget {
  final String name;
  final int? messages;
  final String? imageUrl;
  final String lastMessage;

  const CustomContactNotification({
    super.key,
    required this.name,
    required this.messages,
    required this.lastMessage,
    required this.imageUrl,
  });

  Widget _buildTrailing() {
    if (messages != null) {
      return Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        child: Text(
          messages!.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink(); // Retorna um widget vazio
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: imageUrl != null
            ? ClipOval(
                child: Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              )
            : Text(name.split(' ').map((e) => e[0]).join()),
      ),
      title: Text(name),
      subtitle: Text(lastMessage),
      trailing: _buildTrailing(),
    );
  }
}
