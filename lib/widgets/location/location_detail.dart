import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';

class LocationDetailWidget extends StatelessWidget {
  final bool showBackground;

  const LocationDetailWidget({super.key, this.showBackground = false});

  Widget _buildButtons({
    required VoidCallback onPressed,
    required Widget image,
    Color background = Colors.white,
    EdgeInsetsGeometry? padding,
  }) {
    return Container(
      width: 60,
      height: 60,
      padding: padding ?? EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 4.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: image,
    );
  }

  Widget _buildDescription({required String title, required String description}) {
    return Text.rich(
      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      TextSpan(
        text: title,
        children: [
          TextSpan(
            text: description,
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // if (showBackground)
        Positioned.fill(
          child: Assets.images.location.image(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
          ),
        ),
        Positioned.fill(child: GaussianBackdropFilterWidget()),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // [ ] 지도
                AspectRatio(aspectRatio: 1 / 1, child: Placeholder()),
                Gap(15),
                // 주소 안내
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text.rich(
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        TextSpan(
                          text: '서울 광진구 능동로 110\n',
                          children: [
                            TextSpan(
                              text: '스타시티아트홀',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // [ ] 클립보드로 주소 복사 기능
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppPalette.black,
                        ),
                        child: Text("복사하기", style: TextStyle(color: Colors.white, fontSize: 14)),
                      ),
                    ),
                  ],
                ),
                Divider(height: 30, color: Colors.white.withValues(alpha: 0.1)),
                // 상세 안내
                _buildDescription(
                  title: '🅿️ PARKING\n',
                  description: ' ・ 건물 내 B1 ~ B5 | 2시간 무료\n ・ 건국대학교 병원 지상・지하 주차장 | 1시간 30분 무료',
                ),
                Gap(15),
                _buildDescription(
                  title: '🚇 SUBWAY\n',
                  description: ' ・ 2호선 건대입구역 2번 출구\n ・ 7호선 건대입구역 3번 출구',
                ),
                Gap(15),
                _buildDescription(
                  title: '🚌 BUS (건대입구역, 건대입구역 사거리)\n',
                  description:
                      ' ・ 간선버스 : 240, 721, N61, N62\n ・ 지선버스 : 2016, 2222, 3217, 3220, 4212\n ・ 직행버스 : 102, 3500\n ・ 공항버스 : 6013',
                ),
                Divider(height: 30, color: Colors.white.withValues(alpha: 0.1)),
                // 지도 앱 버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // [ ] 티맵 연동
                    _buildButtons(onPressed: () {}, image: Assets.icons.tmap.svg()),
                    // [ ] 네이버지도 연동
                    _buildButtons(onPressed: () {}, image: Assets.icons.naverMap.svg()),
                    // [ ] 카카오지도 연동
                    _buildButtons(
                      onPressed: () {},
                      image: Assets.icons.kakaoMap.svg(),
                      background: Color(0xffFAE100),
                    ),
                    // [ ] 구글지도 연동
                    _buildButtons(
                      onPressed: () {},
                      image: Assets.icons.googleMap.svg(),
                      padding: EdgeInsets.all(15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
