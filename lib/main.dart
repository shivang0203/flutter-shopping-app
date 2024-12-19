// main.dart
// import 'package:flutter_shopping_app/components/hc1_card.dart';
// import 'package:flutter_shopping_app/components/hc5_card.dart';
// import 'package:flutter_shopping_app/components/hc6_card.dart';
// import 'package:fampay_assignment/components/hc9_card.dart';
import 'package:flutter_shopping_app/features/home/ui/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'bloc/home_section_bloc.dart';
// import 'bloc/home_section_event.dart';
// import 'bloc/home_section_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: Home(),
    );
  }
}
