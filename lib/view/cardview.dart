import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color color;
  final double elevation;
  final ShapeBorder shape;
  final Decoration decoration;
  final ImageProvider image;
  final double width;
  final double height;

  const CustomCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
    this.color = Colors.white,
    this.elevation = 2.0,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    this.decoration = const BoxDecoration(),
    required this.image,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: shape,
      color: color,
      child: Container(
        width: width,
        height: height,
        decoration: decoration,
        child: Padding(
          padding: padding,
          child: Column(
            children: [
              Image(image: image),
              SizedBox(height: 10),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
