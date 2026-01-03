import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:gap/gap.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';

class InfoDetailWidget extends StatelessWidget {
  const InfoDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AvifImage.asset(Assets.images.info),
          GaussianBackdropFilterWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "오랜 연애 끝에 저희 두 사람,\n드디어 한곳을 바라보는 부부가 됩니다.\n화이트데이의 사탕보다 더 달콤하고\n변하지 않는 보석처럼 단단하게 사랑하겠습니다.\n저희의 새로운 시작을 함께 빛내주세요!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Gap(50),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Groom",

                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nKim HyunKyun",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Gap(30),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Bride",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: "\nYu NaYoung", style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              Gap(50),
              Text(
                "🌳 그린피스 후원자로서 화환은 정중히 사양합니다",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
