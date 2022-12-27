import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({super.key, required this.text, this.showDetail = false});
  final String text;
  final bool showDetail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.78,
      child: Text(text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          overflow: TextOverflow.ellipsis,
          maxLines: showDetail ? 100 : 6),
    );
  }
}
