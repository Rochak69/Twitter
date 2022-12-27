import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter/provider/post_provider.dart';
import 'package:twitter/screens/widgets/profile_info_header.dart';
import '../../../utils/ui_helper.dart';
import '../../widgets/feed_interreaction.dart';
import 'feed_body.dart';

class NameWithFeed extends StatelessWidget {
  const NameWithFeed(
      {super.key, required this.postProvider, required this.index});
  final PostProvider postProvider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileInfoHeader(
          id: postProvider.posts[index].id.toString(),
          name: index.isOdd ? "Rochak Shrestha" : "Elon Musk",
          isVerified: postProvider.posts[index].id!.isOdd ? true : false,
        ),
        FeedBody(
          text: postProvider.posts[index].body.toString(),
        ),
        UiHelper.verticalSpacing(10.h),
        const FeedIntereaction()
      ],
    );
  }
}
