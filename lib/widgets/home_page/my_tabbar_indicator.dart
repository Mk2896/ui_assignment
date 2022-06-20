import 'package:flutter/material.dart';

enum IndicatorSize {
  tiny,
  normal,
  full,
}

class MyTabbarIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final IndicatorSize indicatorSize;

  const MyTabbarIndicator({
    required this.indicatorHeight,
    required this.indicatorColor,
    required this.indicatorSize,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MyTabIndicator createBoxPainter([VoidCallback? onChanged]) {
    return _MyTabIndicator(
      this,
      onChanged,
    );
  }
}

class _MyTabIndicator extends BoxPainter {
  final MyTabbarIndicator decoration;

  _MyTabIndicator(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    Rect rect;
    if (decoration.indicatorSize == IndicatorSize.full) {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == IndicatorSize.normal) {
      rect = Offset(offset.dx + 6,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width - 12, decoration.indicatorHeight);
    } else if (decoration.indicatorSize == IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size!.width / 2 - 8,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(16, decoration.indicatorHeight);
    } else {
      rect = Offset(offset.dx,
              (configuration.size!.height - decoration.indicatorHeight)) &
          Size(configuration.size!.width, decoration.indicatorHeight);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: const Radius.circular(8),
            topLeft: const Radius.circular(8)),
        paint);
  }
}
