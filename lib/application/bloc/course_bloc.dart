import 'package:bloc/bloc.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_event.dart';
part 'course_state.dart';
part 'course_bloc.freezed.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc() : super(CourseState.initial()) {
    on<_UploadCourse>((event, emit) {
      print(event.course);
    });
  }
}
