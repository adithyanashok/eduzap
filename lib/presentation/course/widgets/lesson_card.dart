import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: CustomText(
              text: '1. Introduction to cimics drawing course',
              fontSize: 20,
              color: grey900,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomText(
            text:
                'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orcieu soft lectus nibh vulputate urna ut sed neque',
            fontSize: 14,
            color: grey500,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
