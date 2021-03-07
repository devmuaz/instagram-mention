import 'package:flutter/material.dart';

import 'rectangle_with_notch_painter.dart';

/// class [InstagramMentionWithAvatar]
class InstagramMentionWithAvatar extends StatelessWidget {
  /// Creates an Instagram mention widget that contains a user avatar
  /// [Circle Image] and the [Text] value.
  ///
  InstagramMentionWithAvatar({
    Key key,
    @required this.image,
    @required this.text,
    this.textStyle = const TextStyle(fontSize: 16, color: Colors.white),
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.imageRadius = 12,
    this.margin,
    this.radius = 8,
    this.shadow = 0,
    this.triangleWidth = 8,
    this.triangleHeight = 8,
    this.triangleRadius = 2,
    this.color = Colors.black,
    this.spaceBetween = 10,
  })  : assert(text != null, 'text property must not be null.'),
        assert(text.trim().isNotEmpty, 'text value must not be empty.'),
        assert(image != null, 'image property must not be null.'),
        super(key: key);

  /// The circular image besides the text.
  final Image image;

  /// The text value.
  final String text;

  /// The text style of the text value.
  final TextStyle textStyle;

  /// padding.
  final EdgeInsetsGeometry padding;

  /// margin.
  final EdgeInsetsGeometry margin;

  /// The size [radius] of the circular image.
  final double imageRadius;

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

  /// The space between the circle image and the text.
  final double spaceBetween;

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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: image.image,
              radius: imageRadius,
            ),
            SizedBox(width: spaceBetween),
            Text(text, style: textStyle),
          ],
        ),
      ),
    );
  }
}
