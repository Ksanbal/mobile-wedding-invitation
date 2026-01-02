import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class DDayWidget extends StatelessWidget {
  const DDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleCard(image: Assets.images.dDay, title: 'D-DAY', isEnglish: true);
  }
}
