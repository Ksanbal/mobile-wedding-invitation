import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';

class TitleCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final bool isEnglish;

  const TitleCard({super.key, required this.image, required this.title, this.isEnglish = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: image, fit: BoxFit.cover),
      ),
      child: Align(
        alignment: AlignmentGeometry.bottomCenter,
        child: Container(
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
        ),
      ),
    );
  }
}
