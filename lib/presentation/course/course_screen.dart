import 'package:eduzap/presentation/course/widgets/app_bar.dart';
import 'package:eduzap/presentation/course/widgets/course_details.dart';
import 'package:eduzap/presentation/course/widgets/tab_widget.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CourseAppBar(),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/course1.jpg',
            ),
            const CourseDetails(),
            const TabWidgets()
          ],
        ),
      ),
    );
  }
}
