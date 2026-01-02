import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';

class OrderDetailWidget extends StatelessWidget {
  const OrderDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AvifImage.asset(Assets.images.order),
          GaussianBackdropFilterWidget(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "식순",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        [
                              '개식사',
                              '신랑 부모님 입장',
                              '신부 부모님 입장',
                              '양가 어머님 화촉점화',
                              '신랑 입장',
                              '신부 입장',
                              '신랑, 신부 맞절',
                              '혼인 서약',
                              '신부 아버님 축사',
                              '신랑, 신부 둘 다 축가 1곡씩 총 곡',
                              '양가 부모님 인사',
                              '하객 인사',
                              '신랑, 신부 행진',
                              '폐회사',
                              '친인척, 친구 사진 촬영',
                            ]
                            .map(
                              (e) => Text(
                                e,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            )
                            .toList(),
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
