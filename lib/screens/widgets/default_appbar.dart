import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter/screens/widgets/circle_profile_avatar.dart';
import 'package:twitter/screens/widgets/twitter_icon.dart';
import 'package:twitter/utils/app_colors.dart';
import 'package:twitter/utils/app_images.dart';
import 'package:twitter/utils/ui_helper.dart';

AppBar buildDefaultAppBar() {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: AppColors.white,
    elevation: 1,
    leading: Row(
      children: [
        UiHelper.horizontalSpacing(20.w),
        CircleProfileAvatar(
          image: "assets/images/Round.png",
          height: 40.h,
        ),
      ],
    ),
    centerTitle: true,
    title: TwitterIcon(
      height: 22.r,
    ),
    actions: [
      Image.asset(width: 22.r, AppImages.starIcon),
      UiHelper.horizontalSpacing(10.w)
    ],
  );
}
