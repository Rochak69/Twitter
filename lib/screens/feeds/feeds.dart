import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:twitter/provider/post_provider.dart';
import 'package:twitter/screens/feeds/widgets/name_with_feed.dart';
import 'package:twitter/screens/widgets/circle_profile_avatar.dart';
import 'package:twitter/screens/widgets/circular_progress.dart';
import 'package:twitter/utils/ui_helper.dart';

class Feeds extends StatefulWidget {
  const Feeds({super.key});

  @override
  State<Feeds> createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return postProvider.posts.isEmpty
        ? const CircularProgressWidget()
        : Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20, 10, 5, 5),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: postProvider.posts.length,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleProfileAvatar(
                      image: index.isEven
                          ? "assets/images/Round.png"
                          : "assets/images/Round2.png",
                      height: 55.h,
                    ),
                    UiHelper.horizontalSpacing(8.w),
                    NameWithFeed(index: index, postProvider: postProvider)
                  ],
                );
              },
            ),
          );
  }
}
