import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:twitter/provider/post_provider.dart';
import 'package:twitter/screens/home_sccreen.dart';
import 'package:twitter/utils/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => PostProvider())],
        child: MaterialApp(
          theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
          debugShowCheckedModeBanner: false,
          color: AppColors.white,
          title: 'Twitter',
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
