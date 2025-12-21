import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class BrideWidget extends StatelessWidget {
  const BrideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Assets.images.bride.image(width: double.infinity),
          TitleWidget(title: '유명호 ・ 김현란\n딸 나영'),
        ],
      ),
    );
  }
}
