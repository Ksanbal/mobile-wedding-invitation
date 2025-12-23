import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleWidget(title: '식전영상');
  }
}
