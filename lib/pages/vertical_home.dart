import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/widgets/bride/bride.dart';
import 'package:mobile_wedding_invitation/widgets/bride/bride_detail.dart';
import 'package:mobile_wedding_invitation/widgets/d_day/d_day.dart';
import 'package:mobile_wedding_invitation/widgets/d_day/d_day_detail.dart';
import 'package:mobile_wedding_invitation/widgets/groom/groom.dart';
import 'package:mobile_wedding_invitation/widgets/groom/groom_detail.dart';
import 'package:mobile_wedding_invitation/widgets/info/info.dart';
import 'package:mobile_wedding_invitation/widgets/info/info_detail.dart';
import 'package:mobile_wedding_invitation/widgets/location/location.dart';
import 'package:mobile_wedding_invitation/widgets/location/location_detail.dart';

class VerticalHomeScreen extends StatefulWidget {
  const VerticalHomeScreen({super.key});

  @override
  State<VerticalHomeScreen> createState() => _VerticalHomeScreenState();
}

class _VerticalHomeScreenState extends State<VerticalHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            // Info
            InfoWidget(),
            InfoDetailWidget(),
            // 디데이
            DDayWidget(),
            DDayDetailWidget(),
            // 오시는 길
            LocationWidget(),
            LocationDetailWidget(),
            // 신랑
            GroomWidget(),
            GroomDetailWidget(),
            // 신부
            BrideWidget(),
            BrideDetailWidget(),
          ],
        ),
      ),
    );
  }
}
