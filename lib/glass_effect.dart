import 'dart:ui';

import 'package:flutter/material.dart';

/// A widget that displays a glass effect as background of
/// [child] with optional [height] and [width].
class GlassEffect extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  const GlassEffect({
    super.key,
    this.height,
    this.width,
    required this.child,
  });

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
        child: child,
      ),
    );
  }
}
