import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PrimarySpinkit extends StatelessWidget {
  final double size;
  const PrimarySpinkit({
    required this.size,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.halfTriangleDot(
      color: Colors.white,
      size: size
    );
  }
}