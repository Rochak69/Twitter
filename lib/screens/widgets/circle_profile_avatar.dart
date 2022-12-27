import 'package:flutter/material.dart';

class CircleProfileAvatar extends StatelessWidget {
  const CircleProfileAvatar({
    super.key,
    required this.image,
    required this.height,
  });
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipOval(child: Image.asset(height: height, image));
  }
}
