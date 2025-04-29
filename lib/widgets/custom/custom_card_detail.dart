import 'package:flutter/material.dart';

class InfoItem {
  final String label;
  final String value;

  InfoItem({required this.label, required this.value});
}

class ProfileCard extends StatelessWidget {
  final List<InfoItem> infoItems;

  const ProfileCard({
    Key? key,
    required this.infoItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...infoItems.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _buildRow(item.label, item.value),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 16, color: Colors.black54)),
        Text(value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
