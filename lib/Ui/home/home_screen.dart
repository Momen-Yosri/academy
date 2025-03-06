import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/ads_section.dart';

class HomeScreen extends StatelessWidget {
    static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" الصف الأول الثانوي"),
      ),
      backgroundColor: Color(0xFFEAE0D5),
      body: Column(
        children: [
         
          SizedBox(height: 16.h),
          Container(child: AdsSection(),width: double.infinity,),
          SizedBox(height: 20.h),
          _buildTitle("الفصول الدراسية"),
          SizedBox(height: 10.h),
          _buildClassList(),
          Spacer(),
          _buildBottomNavigationBar(),
        ],
      ),
    );
  }

  // Widget _buildHeader() {
  //   return Container(
  //     width: double.infinity,
  //     padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
  //     decoration: BoxDecoration(
  //       color: Color(0xFFD4913B),
  //       borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
  //     ),
  //     child: Center(
  //       child: Text(
  //         "الصف الاول الثانوي",
  //         style: TextStyle(color: Colors.black, fontSize: 22.sp, fontWeight: FontWeight.bold),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildMainCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Icon(Icons.menu_book, color: Colors.amber, size: 50.w),
            SizedBox(height: 10.h),
            Text(
              "حاليا بجميع السناتر\nكتاب الأول",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: TextStyle(color: Color(0xFFD4913B), fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildClassList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildClassCard(),
          _buildClassCard(),
        ],
      ),
    );
  }

  Widget _buildClassCard() {
    return Container(
      width: 160.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
"assets/images/1.jpg",              width: 140.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "مؤمن يسري",
            style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            "الفلسفة وعلم النفس",
            style: TextStyle(color: Colors.amber, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.person, "ملفي"),
          _buildNavItem(Icons.favorite, "المفضلة"),
          _buildNavItem(Icons.notifications, "الاشعارات"),
          _buildNavItem(Icons.home, "الرئيسية", isActive: true),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, {bool isActive = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? Colors.amber : Colors.white, size: 24.w),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(color: isActive ? Colors.amber : Colors.white, fontSize: 14.sp),
        ),
      ],
    );
  }
}