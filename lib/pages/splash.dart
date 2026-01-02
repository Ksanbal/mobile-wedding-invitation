import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:mobile_wedding_invitation/gen/fonts.gen.dart';
import 'package:mobile_wedding_invitation/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                AvifImage.asset(
                  Assets.images.splash,
                  fit: BoxFit.cover,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Text(
                    "Join Us As\nWe Say 'I Do'",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.amaticSC,
                      color: AppPalette.primary,
                      height: 1,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
