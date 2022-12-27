import 'package:flutter/material.dart';
import 'package:twitter/utils/app_colors.dart';

class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      size: size,
      Icons.verified,
      color: AppColors.primaryBlue,
    );
  }
}
