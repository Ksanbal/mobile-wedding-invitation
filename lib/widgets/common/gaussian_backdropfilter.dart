import 'dart:ui';

import 'package:flutter/material.dart';

class GaussianBackdropFilterWidget extends StatelessWidget {
  const GaussianBackdropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Container(color: Colors.black.withValues(alpha: 0.7)),
      ),
    );
  }
}
