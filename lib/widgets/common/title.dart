import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black.withValues(alpha: 0.5)],
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 50, fontFamily: FontFamily.amaticSC),
        ),
      ),
    );
  }
}
