import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: CardWithAction()));

class CardWithAction extends StatefulWidget {
  @override
  _CardWithActionState createState() => _CardWithActionState();
}

class _CardWithActionState extends State<CardWithAction> {
  bool _showLongPressOptions = false;

  void _handleLongPress() {
    setState(() {
      _showLongPressOptions = !_showLongPressOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Main Card UI
            GestureDetector(
              onLongPress: _handleLongPress,
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF4B4EBE), // Purple background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.lock,
                      size: 64,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Big display card\n",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "with action",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "This is a sample text for the subtitle that you can add to contextual cards",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Action"),
                    )
                  ],
                ),
              ),
            ),

            // Long Press Options Overlay
            if (_showLongPressOptions)
              Positioned(
                left: 0,
                child: Column(
                  children: [
                    _longPressOption(
                        icon: Icons.notifications, text: "remind later"),
                    const SizedBox(height: 10),
                    _longPressOption(icon: Icons.cancel, text: "dismiss now"),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _longPressOption({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          const BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.amber, size: 20),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(color: Colors.black87, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
