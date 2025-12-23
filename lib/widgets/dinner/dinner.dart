import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class DinnerWidget extends StatelessWidget {
  const DinnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleCard(image: Assets.images.dinner.provider(), title: '식사');
  }
}
