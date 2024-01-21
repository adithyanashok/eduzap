part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required bool isLoading,
    required List<CourseModel> courses,
    CourseModel? course,
  }) = _CourseState;

  factory CourseState.initial() {
    return const CourseState(
      isLoading: false,
      courses: [],
    );
  }
}
