import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/services/calendar_service.dart';
import 'package:mobile_wedding_invitation/widgets/common/gaussian_backdropfilter.dart';

class DDayDetailWidget extends StatelessWidget {
  const DDayDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AvifImage.asset(Assets.images.dDay),
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
              AvifImage.asset(Assets.images.calendar),
              TextButton(
                onPressed: () async {
                  final scaffoldMessenger = ScaffoldMessenger.of(context);

                  try {
                    final success = await CalendarService.addToCalendar();

                    if (success) {
                      scaffoldMessenger.showSnackBar(const SnackBar(content: Text('캘린더에 추가했습니다!')));
                    } else {
                      scaffoldMessenger.showSnackBar(
                        const SnackBar(content: Text('캘린더 추가에 실패했습니다')),
                      );
                    }
                  } catch (e) {
                    scaffoldMessenger.showSnackBar(SnackBar(content: Text('오류가 발생했습니다: $e')));
                  }
                },
                child: const Text(
                  "캘린더에 추가하기 🗓️",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
