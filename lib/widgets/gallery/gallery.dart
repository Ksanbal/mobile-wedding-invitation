import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/pages/gallery_detail.dart';
import 'package:mobile_wedding_invitation/widgets/common/title_card.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => const GalleryDetailScreen()));
      },
      child: TitleCard(image: Assets.images.gallery, title: '갤러리'),
    );
  }
}
