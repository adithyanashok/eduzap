import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class CourseAppBar extends StatelessWidget {
  const CourseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const CustomText(
        text: "Details",
        fontSize: 20,
        color: grey900,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.save_alt_outlined),
        ),
      ],
    );
  }
}
