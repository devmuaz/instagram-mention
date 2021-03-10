import 'dart:ui';

import 'package:flutter/material.dart';

import 'rectangle_with_notch_painter.dart';

/// class [InstagramMention]
class InstagramMention extends StatelessWidget {
  /// Creates an [Instagram] widget contains only [text] value.
  ///
  InstagramMention({
    Key? key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 16, color: Colors.white),
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    this.margin,
    this.radius = 8,
    this.shadow = 0,
    this.triangleWidth = 8,
    this.triangleHeight = 8,
    this.triangleRadius = 2,
    this.color = Colors.black,
  })  : assert(text.trim().isNotEmpty, 'text value must not be empty.'),
        super(key: key);

  /// The text value.
  final String text;

  /// The text style of the text value.
  final TextStyle textStyle;

  /// padding.
  final EdgeInsetsGeometry padding;

  /// margin.
  final EdgeInsetsGeometry? margin;

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
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RectangleWithNotchPainter(
        color: color,
        radius: radius,
        shadow: shadow,
        triangleWidth: triangleWidth,
        triangleHeight: triangleHeight,
        triangleRadius: triangleRadius,
      ),
      child: Container(
        padding: padding,
        margin: margin,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
