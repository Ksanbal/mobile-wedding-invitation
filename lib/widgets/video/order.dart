import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Text(
              "Comming soon",
              style: TextStyle(color: Colors.white, fontFamily: FontFamily.amaticSC, fontSize: 60),
            ),
          ),
          TitleWidget(title: '식전영상'),
        ],
      ),
    );
  }
}
