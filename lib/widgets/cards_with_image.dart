import 'package:flutter/material.dart';

class SubjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        SubjectCard(title: 'English', items: [
          SubjectItem(name: 'لغة الجليرية', teachers: 10),
          SubjectItem(name: 'فيزياء', teachers: 20),
        ]),
        Divider(),
        SubjectCard(title: 'الكيمياء', items: [
          SubjectItem(name: 'كمياء', teachers: 15),
        ]),
        Divider(),
        SubjectCard(title: 'الأدماء', items: [
          SubjectItem(name: 'أحياء', teachers: 2),
        ]),
      ],
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String title;
  final List<SubjectItem> items;

  SubjectCard({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.name),
              Text('${item.teachers} مدرس'),
            ],
          ),
        )).toList(),
      ],
    );
  }
}

class SubjectItem {
  final String name;
  final int teachers;

  SubjectItem({required this.name, required this.teachers});
}