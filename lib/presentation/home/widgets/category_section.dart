import 'package:eduzap/presentation/home/widgets/section_label.dart';
import 'package:eduzap/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionLabel(
          name: 'Popular category\nour  in platform',
          buttonName: 'see more',
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryCard(
              text: 'Coding',
              imageName: 'coding.jpg',
            ),
            CategoryCard(
              text: 'Designing',
              imageName: 'graphic.jpg',
            ),
          ],
        )
      ],
    );
  }
}
