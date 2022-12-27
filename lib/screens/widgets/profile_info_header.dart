import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter/screens/widgets/verified_icon.dart';
import '../../utils/ui_helper.dart';

class ProfileInfoHeader extends StatelessWidget {
  const ProfileInfoHeader(
      {required this.id,
      required this.name,
      this.isVerified = false,
      super.key});
  final String name;
  final String id;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildName(),
        UiHelper.horizontalSpacing(3.w),
        isVerified ? VerifiedIcon(size: 20.sp) : Container(),
        UiHelper.horizontalSpacing(3.w),
        _buildPostedHours()
      ],
    );
  }

  _buildName() {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.sp,
      ),
    );
  }

  _buildPostedHours() {
    return Text(
      "${id}h",
      style: const TextStyle(color: Colors.grey),
    );
  }
}
