import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/home/widgets/category_section.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/home/widgets/course_section.dart';
import 'package:eduzap/presentation/home/widgets/header.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<CourseCard> course = [
    const CourseCard(
      courseName: "Python Programming",
      courseImg: 'course3.jpg',
      rating: 5,
      tutorName: 'Jarvis',
    ),
    const CourseCard(
      courseName: "Java Programming",
      courseImg: 'course2.jpg',
      rating: 5,
      tutorName: 'David',
    ),
    const CourseCard(
      courseName: "Dart Programming",
      courseImg: 'course4.jpg',
      rating: 5,
      tutorName: 'Jhon Doe',
    ),
    const CourseCard(
      courseName: "HTML, CSS for noobs and nerds! Programming",
      courseImg: 'course1.jpg',
      rating: 5,
      tutorName: 'Nikhil',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    course.shuffle();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50),
        children: [
          const Header(),
          const CustomFilledFormField(
            hintText: "Graphic Illustration",
            suffixIcon: Icon(
              Icons.search_outlined,
              color: grey400,
            ),
          ),
          const CategorySection(),
          const SizedBox(height: 30),
          CourseSection(
              sectionName: "Most watching\ncategory", courses: course),
          const SizedBox(height: 30),
          CourseSection(
              sectionName: 'What others are\nwatching in app', courses: course)
        ],
      ),
    );
  }
}
