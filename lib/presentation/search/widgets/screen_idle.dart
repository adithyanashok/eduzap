import 'package:eduzap/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class SearchScreenIdle extends StatelessWidget {
  const SearchScreenIdle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 2,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (context, index) {
          return const CategoryCard(
            text: 'Coding',
            imageName: 'coding.jpg',
          );
        },
      ),
    );
  }
}
