import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/course/widgets/lesson_card.dart';
import 'package:flutter/material.dart';

class LessonsTabView extends StatelessWidget {
  const LessonsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: List.generate(
          courses.length,
          (index) {
            return const LessonCard();
          },
        ),
      ),
    );
  }
}
