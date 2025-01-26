import 'package:academy/widgets/cards_with_image.dart';
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
        
        title: Text(""),
      ),
      body: Padding(
        padding:  REdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 20.h,
          children: [
            SizedBox(
              height: 20.h,
            ),
            AdsSection(),
            Text("الصف الدراسي",style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.left,),
            SubjectList(),
            
          ],
        ),
      ),
    );
  }
}
