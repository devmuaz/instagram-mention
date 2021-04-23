import 'package:flutter/material.dart';

/// class [RectangleWithNotchPainter]
class RectangleWithNotchPainter extends CustomPainter {
  /// Paintes a shape (rectangle by default) with a small notch
  /// below the shape.
  ///
  const RectangleWithNotchPainter({
    required this.color,
    required this.radius,
    required this.shadow,
    required this.triangleWidth,
    required this.triangleHeight,
    required this.triangleRadius,
  });

  /// The color of the painted shape.
  final Color color;

  /// The radius value for the edges of the shape (aka: border radius).
  final double radius;

  /// The box shadow behind the painted shape.
  final double shadow;

  /// The notch width.
  final double triangleWidth;

  /// The notch height.
  final double triangleHeight;

  /// The radius for the edges of the notch.
  final double triangleRadius;

  @override
  void paint(Canvas canvas, Size size) {
    // rectangle lines points (left, bottom. right, top)
    final Offset leftLineStartPoint = Offset(0, radius);
    final Offset leftLineEndPoint = Offset(0, size.height - radius);

    final Offset bottomLineStartPoint = Offset(radius, size.height);
    final Offset bottomLineEndPoint = Offset(size.width - radius, size.height);

    final Offset rightLineStartPoint = Offset(size.width, size.height - radius);
    final Offset rightLineEndPoint = Offset(size.width, radius);

    final Offset topLineStartPoint = Offset(size.width - radius, 0);
    final Offset topLineEndPoint = Offset(radius, 0);

    // rectangle control points
    final Offset topLeftControlPoint = Offset.zero;
    final Offset bottomLeftControlPoint = Offset(0, size.height);
    final Offset topRightControlPoint = Offset(size.width, 0);
    final Offset bottomRightControlPoint = Offset(size.width, size.height);

    // triangle points
    final Offset bottomCenterStartPoint =
        Offset((size.width / 2) - triangleWidth - triangleRadius, size.height);
    final Offset bottomCenterStartPoint2 = Offset(
        (size.width / 2) - triangleWidth + triangleRadius,
        size.height + triangleRadius);

    final Offset bottomCenterMiddlePoint = Offset(
        (size.width / 2) - triangleRadius,
        size.height + triangleHeight - triangleRadius);
    final Offset bottomCenterMiddlePoint2 = Offset(
        (size.width / 2) + triangleRadius,
        size.height + triangleHeight - triangleRadius);

    final Offset bottomCenterEndPoint = Offset(
        (size.width / 2) + triangleWidth - triangleRadius,
        size.height + triangleRadius);
    final Offset bottomCenterEndPoint2 =
        Offset((size.width / 2) + triangleWidth + triangleRadius, size.height);

    // triangle control points
    final Offset bottomCenterStartControlPoint =
        Offset((size.width / 2) - triangleWidth, size.height);
    final Offset bottomCenterMiddleControlPoint =
        Offset(size.width / 2, size.height + triangleHeight);
    final Offset bottomCenterEndControlPoint =
        Offset((size.width / 2) + triangleWidth, size.height);

    final Paint paint = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, shadow);

    final Path path = Path()
      ..moveTo(leftLineStartPoint.dx, leftLineStartPoint.dy)
      ..lineTo(leftLineEndPoint.dx, leftLineEndPoint.dy)
      ..quadraticBezierTo(bottomLeftControlPoint.dx, bottomLeftControlPoint.dy,
          bottomLineStartPoint.dx, bottomLineStartPoint.dy)
      ..lineTo(bottomCenterStartPoint.dx, bottomCenterStartPoint.dy)
      ..quadraticBezierTo(
          bottomCenterStartControlPoint.dx,
          bottomCenterStartControlPoint.dy,
          bottomCenterStartPoint2.dx,
          bottomCenterStartPoint2.dy)
      ..lineTo(bottomCenterMiddlePoint.dx, bottomCenterMiddlePoint.dy)
      ..quadraticBezierTo(
          bottomCenterMiddleControlPoint.dx,
          bottomCenterMiddleControlPoint.dy,
          bottomCenterMiddlePoint2.dx,
          bottomCenterMiddlePoint2.dy)
      ..lineTo(bottomCenterEndPoint.dx, bottomCenterEndPoint.dy)
      ..quadraticBezierTo(
          bottomCenterEndControlPoint.dx,
          bottomCenterEndControlPoint.dy,
          bottomCenterEndPoint2.dx,
          bottomCenterEndPoint2.dy)
      ..lineTo(bottomLineEndPoint.dx, bottomLineEndPoint.dy)
      ..quadraticBezierTo(
          bottomRightControlPoint.dx,
          bottomRightControlPoint.dy,
          rightLineStartPoint.dx,
          rightLineStartPoint.dy)
      ..lineTo(rightLineEndPoint.dx, rightLineEndPoint.dy)
      ..quadraticBezierTo(topRightControlPoint.dx, topRightControlPoint.dy,
          topLineStartPoint.dx, topLineStartPoint.dy)
      ..lineTo(topLineEndPoint.dx, topLineEndPoint.dy)
      ..quadraticBezierTo(topLeftControlPoint.dx, topLeftControlPoint.dy,
          leftLineStartPoint.dx, leftLineStartPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(RectangleWithNotchPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(RectangleWithNotchPainter oldDelegate) => false;
}
