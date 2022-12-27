import 'package:flutter/material.dart';
import '../../utils/app_images.dart';

class TwitterIcon extends StatelessWidget {
  const TwitterIcon({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(height: height, AppImages.twitterIcon);
  }
}
