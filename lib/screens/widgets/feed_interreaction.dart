import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter/utils/app_images.dart';
import 'package:twitter/utils/ui_helper.dart';

class FeedIntereaction extends StatelessWidget {
  const FeedIntereaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIntereactions(AppImages.heartIcon, "119"),
          _buildIntereactions(AppImages.commentIcon, "26"),
          _buildIntereactions(AppImages.retweetIcon, "4"),
          _buildIntereactions(AppImages.shareIcon, ""),
        ],
      ),
    );
  }

  Row _buildIntereactions(String image, String text) {
    return Row(
      children: [
        Image.asset(image),
        UiHelper.horizontalSpacing(3.h),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
