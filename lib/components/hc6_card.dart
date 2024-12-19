import 'package:flutter/material.dart';

class HC6Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[300],
        child: const Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
      title: const Text(
        "Small card with arrow",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
