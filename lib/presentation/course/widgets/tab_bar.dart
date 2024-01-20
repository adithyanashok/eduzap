import 'package:eduzap/infrastructure/data.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/course/widgets/rating/rating_card.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class OverViewTabView extends StatelessWidget {
  const OverViewTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const CustomText(
            text:
                '''Lectus vitae lorem lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id! luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!''',
            fontSize: 15,
            color: grey500,
            fontWeight: FontWeight.w400,
          ),
          const RatingLabel(),
          Column(
            children: List.generate(
              ratings.length,
              (index) {
                final rating = ratings[index];
                return RatingCard(
                  imageName: rating.imageName,
                  name: rating.name,
                  review: rating.review,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
