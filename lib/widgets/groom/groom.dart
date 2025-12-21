import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class GroomWidget extends StatelessWidget {
  const GroomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Assets.images.groom.image(width: double.infinity),
          TitleWidget(title: '김병구 ・ 정은희\n아들 현균'),
        ],
      ),
    );
  }
}
