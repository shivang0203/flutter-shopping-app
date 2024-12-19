import 'package:flutter/material.dart';

class HC9Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildGradientCard(Colors.orange, Colors.yellow),
        _buildGradientCard(Colors.deepPurple, Colors.blue),
        _buildGradientCard(Colors.green, Colors.teal),
      ],
    );
  }

  Widget _buildGradientCard(Color startColor, Color endColor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
