part of 'course_bloc.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.uploadCourse({
    required CourseModel course,
  }) = _UploadCourse;
}
