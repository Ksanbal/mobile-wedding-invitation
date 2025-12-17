import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/widgets/info/info.dart';
import 'package:mobile_wedding_invitation/widgets/info/info_detail.dart';

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
          ],
        ),
      ),
    );
  }
}
