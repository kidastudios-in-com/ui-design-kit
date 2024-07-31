import 'package:flutter/material.dart';

/// Creates a glass effect as background for any [child]
/// Optionally give [color], defaults to White
class GlassEffect extends StatelessWidget {
  final Color color;
  final Widget child;
  const GlassEffect({super.key, required this.child, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: child,
    );
  }
}
