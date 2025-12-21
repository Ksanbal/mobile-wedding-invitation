import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/pages/gallery_detail.dart';
import 'package:mobile_wedding_invitation/widgets/common/title.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => const GalleryDetailScreen()));
      },
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Assets.images.gallery.image(width: double.infinity),
            TitleWidget(title: '갤러리'),
          ],
        ),
      ),
    );
  }
}
