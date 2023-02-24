// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class CircleTabIndicator extends Decoration {
  Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _circlePainter(color: color, radius: radius);
  }
}

class _circlePainter extends BoxPainter {
  final double radius;
  late Color color;

  _circlePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    late Paint paint;

    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    final Offset circleOffset = offset +
        Offset(configuration.size!.width * 0.5,
            configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, paint);
  }
}
