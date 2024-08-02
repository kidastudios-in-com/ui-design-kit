import 'dart:ui';

import 'package:flutter/material.dart';

class GlassEffect extends StatelessWidget {
  final height;
  final width;
  const GlassEffect({super.key , required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                )
        );
  }
}