import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class BrideWidget extends StatelessWidget {
  const BrideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleCard(image: Assets.images.bride.provider(), title: '유명호 ・ 김현란\n딸 나영');
  }
}
