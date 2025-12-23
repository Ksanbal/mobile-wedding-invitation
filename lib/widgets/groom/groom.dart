import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class GroomWidget extends StatelessWidget {
  const GroomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleCard(image: Assets.images.groom.provider(), title: '김병구 ・ 정은희\n아들 현균');
  }
}
