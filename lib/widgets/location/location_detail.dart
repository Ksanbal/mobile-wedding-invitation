import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gap/gap.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LocationDetailWidget extends StatelessWidget {
  final bool showBackground;

  const LocationDetailWidget({super.key, this.showBackground = false});

  Widget _buildButtons({
    required VoidCallback onPressed,
    required Widget image,
    Color background = Colors.white,
    EdgeInsetsGeometry? padding,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
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
      ),
    );
  }

  Widget _buildDescription({required String title, required String description}) {
    return Text.rich(
      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      TextSpan(
        text: title,
        children: [TextSpan(text: description, style: TextStyle(fontWeight: FontWeight.normal))],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          child: AvifImage.asset(
            Assets.images.location,
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
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return InAppWebView(
                        initialData: InAppWebViewInitialData(
                          data: '''
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
  <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
	<title>Kakao 지도 시작하기</title>
  <script
    type="text/javascript"
    src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=fa20dc8cd5a4a82965ad85d3fe3a344c"
  ></script>
</head>
<body>
	<div id="map" style="width:${constraints.maxWidth}px;height:${constraints.maxHeight}px;"></div>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.540893, 127.071495),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);

		// 마커 생성
		var markerPosition = new kakao.maps.LatLng(37.540893, 127.071495);
		var marker = new kakao.maps.Marker({
			position: markerPosition
		});
		marker.setMap(map);
	</script>
</body>
</html>
''',
                        ),
                        initialSettings: InAppWebViewSettings(
                          javaScriptEnabled: true,
                          useHybridComposition: true,
                          mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
                        ),
                      );
                    },
                  ),
                ),
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
                      onTap: () async {
                        // [x] 클립보드로 주소 복사 기능
                        await Clipboard.setData(ClipboardData(text: '서울 광진구 능동로 110 스타시티 영존 5층'));
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text('복사되었습니다!')));
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
                    // [x] 티맵 연동
                    _buildButtons(
                      onPressed: () {
                        launchUrlString('tmap://search?name=스타시티아트홀 주차장');
                      },
                      image: Assets.icons.tmap.svg(),
                    ),
                    // [x] 네이버지도 연동
                    _buildButtons(
                      onPressed: () {
                        launchUrlString('https://map.naver.com/v5/search/스타시티아트홀');
                      },
                      image: Assets.icons.naverMap.image(),
                    ),
                    // [x] 카카오지도 연동
                    _buildButtons(
                      onPressed: () {
                        launchUrlString('https://map.kakao.com/link/search/스타시티아트홀');
                      },
                      image: Assets.icons.kakaoMap.svg(),
                      background: Color(0xffFAE100),
                    ),
                    // [x] 구글지도 연동
                    _buildButtons(
                      onPressed: () {
                        launchUrlString('https://www.google.com/maps/search/?api=1&query=스타시티아트홀');
                      },
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
