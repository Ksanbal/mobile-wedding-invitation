import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';
import 'package:mobile_wedding_invitation/widgets/common/money_card.dart';

class BrideDetailWidget extends StatelessWidget {
  const BrideDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AvifImage.asset(Assets.images.bride),
          GaussianBackdropFilterWidget(),
          Column(
            spacing: 50,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "신부측\n마음 전하실 곳",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Column(
                spacing: 20,
                children: [
                  MoneyCard(
                    title: '신부 유나영',
                    bankName: '신한은행',
                    bankAccount: '110-574-017860',
                    kakaoCode: 'FYkyhpFIS',
                  ),
                  MoneyCard(
                    title: '아버지 유명호',
                    bankName: '농협은행',
                    bankAccount: '352-0022-4254-63',
                    kakaoCode: 'Ej7tLFCbd',
                  ),
                  MoneyCard(
                    title: '어머니 김현란',
                    bankName: '카카오뱅크',
                    bankAccount: '3333-04-7143828',
                    kakaoCode: '281006011000051332746020',
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
