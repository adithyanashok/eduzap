import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/course_overview.dart';
import 'package:eduzap/presentation/course/widgets/tutor_name.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          TutorName(),
          CustomText(
            text: 'Comic drawing essential for everyone!',
            fontSize: 22,
            color: grey900,
            fontWeight: FontWeight.bold,
          ),
          CourseOverView(),
          CustomText(
            text:
                '''Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!''',
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
