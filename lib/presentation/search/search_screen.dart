import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/home/widgets/course_card.dart';
import 'package:eduzap/presentation/search/widgets/result_course_card.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const CustomFilledFormField(),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: CustomText(
              text: 'Categories',
              fontSize: 14,
              color: grey300,
            ),
          ),
          // SearchScreenIdle(size: size)
          HorizCourseCard(courses: courses)
        ],
      ),
    );
  }
}
