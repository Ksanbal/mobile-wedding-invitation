import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DinnerDetailWidget extends StatelessWidget {
  const DinnerDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: AvifImage.asset(Assets.images.dinner, fit: BoxFit.cover),
          ),
          GaussianBackdropFilterWidget(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "DINNER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: FontFamily.amaticSC,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(8),
                        child: AvifImage.asset(Assets.images.dinnerDetail),
                      ),
                      Text(
                        "갈비탕 한상차림과 70가지 세미뷔페가 제공됩니다\n맥주, 와인 디스펜서도 있으니 다양하게 즐겨주세요",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrlString('https://www.starcityarthall.com/html/dining.php');
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppPalette.black,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            "자세히보기",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
