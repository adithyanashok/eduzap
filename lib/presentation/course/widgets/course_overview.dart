import 'package:eduzap/presentation/course/widgets/course_overview_text.dart';
import 'package:flutter/material.dart';

class CourseOverView extends StatelessWidget {
  const CourseOverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseOverviewText(
                iconData: Icons.access_time_outlined,
                text: "1 hour 30 minutes",
              ),
              SizedBox(height: 10),
              CourseOverviewText(
                iconData: Icons.star_border_rounded,
                text: '4.7',
              ),
            ],
          ),
          SizedBox(width: 20),
          CourseOverviewText(
            text: "12 Lessons",
            iconData: Icons.videocam_outlined,
          ),
        ],
      ),
    );
  }
}
