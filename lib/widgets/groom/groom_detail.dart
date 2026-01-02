import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';
import 'package:mobile_wedding_invitation/widgets/common/money_card.dart';

class GroomDetailWidget extends StatelessWidget {
  const GroomDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AvifImage.asset(Assets.images.groom),
          GaussianBackdropFilterWidget(),
          Column(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "신랑측\n마음 전하실 곳",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Column(
                spacing: 20,
                children: [
                  MoneyCard(
                    title: '신랑 김현균',
                    bankName: '카카오뱅크',
                    bankAccount: '3333-03-4142306',
                    kakaoCode: 'Ej7tLFCbd',
                  ),
                  MoneyCard(
                    title: '아버지 김병구',
                    bankName: '농협은행',
                    bankAccount: '302-4014-5900-11',
                    kakaoCode: '281006011197157001009825',
                  ),
                  MoneyCard(
                    title: '어머니 정은희',
                    bankName: '농협은행',
                    bankAccount: '302-0172-5935-31',
                    kakaoCode: '281006011000057093258879',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
