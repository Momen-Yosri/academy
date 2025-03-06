import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsSection extends StatelessWidget {
   AdsSection({super.key});
final List<Widget> ads =[
  Image.asset("assets/images/1.jpg"),
  Image.asset("assets/images/2.jpg"),
  Image.asset("assets/images/3.jpg"),
  Image.asset("assets/images/4.jpg"),
  
];
// width 
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items:ads, options: CarouselOptions(height:200.h ,
    autoPlay: true, // Enable autoplay
    autoPlayInterval: Duration(seconds: 3), // Duration between slides
    autoPlayAnimationDuration: Duration(milliseconds: 800), // Transition speed
    autoPlayCurve: Curves.fastOutSlowIn, // Animation curve for transition
  enlargeCenterPage: true,
  ),
     
    );
  }
}