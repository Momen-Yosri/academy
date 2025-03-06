import 'package:academy/widgets/cards_with_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'widgets/ads_section.dart';
class HomeScreen extends StatelessWidget {
    static const String routeName = 'home_screen';
   HomeScreen({super.key});
  List<Map<String, String>> classData = [
    {"name": "مؤمن يسري", "subject": "الفلسفة وعلم النفس"},
    {"name": "مؤمن يسري", "subject": "الفلسفة وعلم النفس"},
    {"name": "مؤمن يسري", "subject": "الفلسفة وعلم النفس"},
    {"name": "مؤمن يسري", "subject": "الفلسفة وعلم النفس"},
  ];

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
        Container(child: AdsSection(), width: double.infinity),
        SizedBox(height: 20.h),
        _buildTitle("الفصول الدراسية"),
        SizedBox(height: 10.h),
        Expanded(
          child: _buildClassList(), // Wrapped in Expanded to take available space
        ),
        _buildBottomNavigationBar(),
      ],
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
    child: SizedBox(
      height: 400.h, // Increased height to accommodate grid items
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 12.w, // Horizontal spacing between items
          mainAxisSpacing: 12.h, // Vertical spacing between items
          childAspectRatio: 0.7, // Adjust based on your card's dimensions
        ),
        scrollDirection: Axis.vertical, // Vertical scrolling (default)
        itemCount: classData.length,
        itemBuilder: (context, index) {
          return _buildClassCard(
            classData[index]["name"]!,
            classData[index]["subject"]!,
          );
        },
      ),
    ),
  );
  }

  Widget _buildClassCard(String name, String subject) {
  return Container(
    width: 160.w,
    padding: EdgeInsets.all(8.w),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            "assets/images/profile.jpg",
            width: 140.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          subject,
          style: TextStyle(color: Colors.amber, fontSize: 14.sp),
        ),
      ],
    ),
  );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      margin: EdgeInsets.only(bottom: 10.h,right: 8.w,left: 8.w),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all( Radius.circular(20.r)),
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