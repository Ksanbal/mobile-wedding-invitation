import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class DDayWidget extends StatelessWidget {
  const DDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Assets.images.dDay.image(width: double.infinity),
          TitleWidget(title: '디데이'),
        ],
      ),
    );
  }
}
