import 'package:flutter/material.dart';
import 'package:twitter/screens/widgets/default_appbar.dart';
import 'package:twitter/utils/app_colors.dart';

import 'feeds/feeds.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: buildDefaultAppBar(),
        body: const Feeds());
  }
}
