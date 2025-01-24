import 'package:flutter/material.dart';

import 'widgets/ads_section.dart';

class HomeScreen extends StatelessWidget {
    static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("الصف الأول الثانوي"),
      ),
      body: Column(
        children: [
          
          AdsSection(),
          
        ],
      ),
    );
  }
}
