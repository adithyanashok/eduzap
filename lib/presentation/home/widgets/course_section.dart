import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/home/widgets/section_label.dart';
import 'package:flutter/material.dart';

class CourseSection extends StatelessWidget {
  final List<CourseCard> courses;
  final String sectionName;
  const CourseSection({
    super.key,
    required this.courses,
    required this.sectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionLabel(
          name: sectionName,
          buttonName: 'see more',
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(2, (index) {
            final course = courses[index];
            return CourseCard(
              courseName: course.courseName,
              courseImg: course.courseImg,
              rating: course.rating,
              tutorName: course.tutorName,
            );
          }),
        )
      ],
    );
  }
}
