import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String courseName;
  final String courseImg;
  final double rating;
  final String tutorName;
  const CourseCard({
    super.key,
    required this.courseName,
    required this.courseImg,
    required this.rating,
    required this.tutorName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.asset(
              'assets/images/$courseImg',
              fit: BoxFit.cover,
              width: 180,
              height: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CustomText(
              text: courseName,
              fontSize: 18,
              color: grey900,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomText(
            text: tutorName,
            fontSize: 14,
            color: grey500,
            fontWeight: FontWeight.w500,
          ),
          Row(
            children: [
              CustomText(
                text: '$rating',
                fontSize: 13,
                color: grey500,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                width: 10,
              ),
              AnimatedRatingStars(
                onChanged: (value) {},
                initialRating: rating,
                starSize: 15,
                customFilledIcon: Icons.star_rounded,
                customHalfFilledIcon: Icons.star_half_outlined,
                customEmptyIcon: Icons.star_border_rounded,
                readOnly: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
