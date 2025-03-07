import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChapterScreen extends StatelessWidget {
  static const String routeName = 'chapter_screen';
   ChapterScreen({super.key});
final List<Map<String, dynamic>> lectures = List.generate(5, (index) => {
        "title": "المحاضرة التمهيدية",
        "price": index < 3 ? "20.00 ج.م" : null,
      });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("الشهر الأول"),
      ),
      body: Column(
        children: [
         
          Expanded(child: _buildLectureList()),
          _buildBottomBar(),
        ],
      ),
    );
  }



  Widget _buildLectureList() {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: lectures.length,
      itemBuilder: (context, index) {
        final lecture = lectures[index];
        return Container(
          margin: EdgeInsets.only(bottom: 10.h),
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    lecture["price"] != null ? Icons.attach_money : Icons.play_arrow,
                    color: lecture["price"] != null ? Colors.orange : Colors.black,
                    size: 20.w,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    lecture["title"],
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
              if (lecture["price"] != null)
                Text(
                  lecture["price"]!,
                  style: TextStyle(color: Colors.orange, fontSize: 14.sp),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.all(16.w),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ج.م 45.00",
            style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              child: Text(
                "شراء الشهر",
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}