import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isEnglish;

  const TitleWidget({super.key, required this.title, this.isEnglish = false});

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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: isEnglish ? 50 : 30,
            fontFamily: isEnglish ? FontFamily.amaticSC : FontFamily.gowunBatang,
          ),
        ),
      ),
    );
  }
}
