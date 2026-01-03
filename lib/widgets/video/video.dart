import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2 / 3, child: TitleWidget(title: '식전영상\nComming soon'));
  }
}
