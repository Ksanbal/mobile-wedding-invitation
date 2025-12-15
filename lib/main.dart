import 'package:flutter/material.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '김현균과 유나영 결혼합니다!',
      theme: ThemeData(
        fontFamily: FontFamily.gowunBatang,
        scaffoldBackgroundColor: AppPalette.black,
        colorScheme: ColorScheme.fromSeed(seedColor: AppPalette.black),
      ),
      home: const SplashScreen(),
    );
  }
}
