import 'package:flutter/material.dart';

class TwoDimensionalHomeScreen extends StatefulWidget {
  const TwoDimensionalHomeScreen({super.key});

  @override
  State<TwoDimensionalHomeScreen> createState() => _TwoDimensionalHomeScreenState();
}

class _TwoDimensionalHomeScreenState extends State<TwoDimensionalHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Two Dimensional Home", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
