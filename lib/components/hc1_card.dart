import 'package:flutter/material.dart';

class HC1Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            // Uncomment and replace with actual image URL
            // backgroundImage: NetworkImage(
            //   "https://westeros.r2.famapp.xyz/media/images/generic/6ab4a85b837240b69a6be61bd",
            // ),
          ),
          const SizedBox(width: 16),
          const Text(
            "Arya Stark",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

