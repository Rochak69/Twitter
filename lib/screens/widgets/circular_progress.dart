import 'package:flutter/material.dart';
import 'package:twitter/utils/app_colors.dart';

class CircularProgressWidget extends StatelessWidget {
  const CircularProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: AppColors.primaryBlue,
      strokeWidth: 3,
    ));
  }
}
