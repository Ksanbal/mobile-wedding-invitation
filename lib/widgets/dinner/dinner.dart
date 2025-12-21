import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class DinnerWidget extends StatelessWidget {
  const DinnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Assets.images.dinner.image(fit: BoxFit.cover),
          ),
          TitleWidget(title: '식사'),
        ],
      ),
    );
  }
}
