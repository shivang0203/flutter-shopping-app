import 'package:flutter/material.dart';

class HC5Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Uncomment and replace with actual image URL
          // Image.network(
          //   "https://westeros.r2.famapp.xyz/media/images/generic/7d566650409c4a289957b030c3fee111.png",
          //   height: 40,
          // ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Save the streak 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("10-Day Savings Challenge"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
