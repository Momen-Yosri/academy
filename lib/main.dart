import 'package:academy/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Ui/chapter_screen.dart';
import 'Ui/home/home_screen.dart';
import 'Ui/lecture_screen.dart';
import 'Ui/login_screen.dart';
import 'Ui/register_screen.dart';
// used Packages: utils for responsive , fonts for amiri 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.amiri(color: AppColors.whiteColor, fontSize: 24.sp, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.amiri(color: AppColors.primaryColor, fontSize: 24.sp, fontWeight: FontWeight.bold),
          titleSmall: GoogleFonts.amiri(color: AppColors.textColor, fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: AppColors.primaryBackgroundColor,
        appBarTheme: AppBarTheme(
          toolbarHeight: 50.sp,
          backgroundColor: AppColors.textColor,centerTitle: true,
          titleTextStyle:GoogleFonts.amiri(color: AppColors.blackColor, fontSize: 24.sp, fontWeight: FontWeight.bold) ,
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(24.r),
      ),
    ),
        )
      ),
      initialRoute: ChapterScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) =>  HomeScreen(),
        ChapterScreen.routeName: (context) => const ChapterScreen(),

        LectureScreen.routeName: (context) => const LectureScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
      },
    );
      }
    );
  }
}
