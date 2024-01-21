import 'dart:io';

import 'package:eduzap/application/bloc/course_bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/presentation/admin_course/widgets/lesson_text_field.dart';
import 'package:eduzap/presentation/admin_course/widgets/video_and_image.dart';
import 'package:eduzap/presentation/core/colors.dart';
import 'package:eduzap/presentation/widgets/buttons.dart';
import 'package:eduzap/presentation/widgets/text_fields.dart';
import 'package:eduzap/presentation/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class UploadCourse extends StatefulWidget {
  final File? videoFile;
  final File? imageFile;
  final String? videoPath;
  const UploadCourse(
      {super.key, this.videoFile, this.videoPath, this.imageFile});

  @override
  UploadCourseState createState() => UploadCourseState();
}

class UploadCourseState extends State<UploadCourse> {
  // Controllers
  late VideoPlayerController videoPlayerController;
  late TextEditingController courseTitleController;
  late TextEditingController courseDescController;
  late TextEditingController courseOverviewController;
  late TextEditingController courseTutorNameController;
  static List<String> lessonsList = [''];

  @override
  void initState() {
    super.initState();
    setState(() {
      videoPlayerController = VideoPlayerController.file(widget.videoFile!);
    });
    videoPlayerController.initialize();
    videoPlayerController.setVolume(1);
    courseTitleController = TextEditingController();
    courseDescController = TextEditingController();
    courseOverviewController = TextEditingController();
    courseTutorNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "Upload Course",
          fontSize: 22,
          color: grey900,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            VideoAndImageRow(
              videoPlayerController: videoPlayerController,
              imageFile: widget.imageFile!,
            ),
            CustomTextField(
              hintText: "Course Title",
              controller: courseTitleController,
            ),
            CustomTextField(
              hintText: "Course Description",
              maxLength: 100,
              controller: courseDescController,
            ),
            CustomTextField(
              hintText: "Course Overview",
              maxLength: 400,
              controller: courseOverviewController,
            ),
            CustomTextField(
              hintText: "Tutor name",
              controller: courseTutorNameController,
            ),
            const Text(
              'Add Lessons',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            ..._getLessons(),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(height: 20),
            CustomPrimaryButton(
              text: "Upload",
              color: primaryBlue,
              textColor: Colors.white,
              onTap: () {
                BlocProvider.of<CourseBloc>(context).add(
                  CourseEvent.uploadCourse(
                    course: CourseModel(
                      courseTitle: courseTitleController.text,
                      courseDescription: courseDescController.text,
                      courseOverview: courseOverviewController.text,
                      tutorName: courseTutorNameController.text,
                      lessons: lessonsList,
                      videoUrl: widget.videoFile.toString(),
                      imageUrl: widget.imageFile.toString(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// get firends text-fields
  List<Widget> _getLessons() {
    List<Widget> lessonsTextFields = [];
    for (int i = 0; i < lessonsList.length; i++) {
      lessonsTextFields.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            Expanded(child: LessonTextField(i)),
            const SizedBox(
              width: 16,
            ),
            // we need add button at last lessons row
            _addRemoveButton(i == lessonsList.length - 1, i),
          ],
        ),
      ));
    }
    return lessonsTextFields;
  }

  /// add / remove button
  Widget _addRemoveButton(bool add, int index) {
    return InkWell(
      onTap: () {
        if (add) {
          // add new text-fields at the top of all lessons textfields
          lessonsList.insert(0, '');
        } else {
          lessonsList.removeAt(index);
        }
        setState(() {});
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: (add) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          (add) ? Icons.add : Icons.remove,
          color: Colors.white,
        ),
      ),
    );
  }
}
