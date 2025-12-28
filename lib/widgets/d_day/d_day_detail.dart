import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';

class DDayDetailWidget extends StatelessWidget {
  const DDayDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Assets.images.dDay.image(),
          GaussianBackdropFilterWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "2026.03.14 SAT\n05:00PM",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: FontFamily.amaticSC,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // [x] 캘린더 이미지 삽입
              Assets.images.calendar.image(),
              TextButton(
                onPressed: () {},
                child: Text("캘린더에 추가하기 🗓️", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
