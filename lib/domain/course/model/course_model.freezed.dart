// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  String get courseTitle => throw _privateConstructorUsedError;
  String get courseDescription => throw _privateConstructorUsedError;
  String get courseOverview => throw _privateConstructorUsedError;
  String get tutorName => throw _privateConstructorUsedError;
  List<String> get lessons => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res, CourseModel>;
  @useResult
  $Res call(
      {String courseTitle,
      String courseDescription,
      String courseOverview,
      String tutorName,
      List<String> lessons,
      String videoUrl,
      String imageUrl});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res, $Val extends CourseModel>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = null,
    Object? courseDescription = null,
    Object? courseOverview = null,
    Object? tutorName = null,
    Object? lessons = null,
    Object? videoUrl = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: null == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseOverview: null == courseOverview
          ? _value.courseOverview
          : courseOverview // ignore: cast_nullable_to_non_nullable
              as String,
      tutorName: null == tutorName
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseModelImplCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$CourseModelImplCopyWith(
          _$CourseModelImpl value, $Res Function(_$CourseModelImpl) then) =
      __$$CourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String courseTitle,
      String courseDescription,
      String courseOverview,
      String tutorName,
      List<String> lessons,
      String videoUrl,
      String imageUrl});
}

/// @nodoc
class __$$CourseModelImplCopyWithImpl<$Res>
    extends _$CourseModelCopyWithImpl<$Res, _$CourseModelImpl>
    implements _$$CourseModelImplCopyWith<$Res> {
  __$$CourseModelImplCopyWithImpl(
      _$CourseModelImpl _value, $Res Function(_$CourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTitle = null,
    Object? courseDescription = null,
    Object? courseOverview = null,
    Object? tutorName = null,
    Object? lessons = null,
    Object? videoUrl = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CourseModelImpl(
      courseTitle: null == courseTitle
          ? _value.courseTitle
          : courseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      courseDescription: null == courseDescription
          ? _value.courseDescription
          : courseDescription // ignore: cast_nullable_to_non_nullable
              as String,
      courseOverview: null == courseOverview
          ? _value.courseOverview
          : courseOverview // ignore: cast_nullable_to_non_nullable
              as String,
      tutorName: null == tutorName
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseModelImpl implements _CourseModel {
  const _$CourseModelImpl(
      {required this.courseTitle,
      required this.courseDescription,
      required this.courseOverview,
      required this.tutorName,
      required final List<String> lessons,
      required this.videoUrl,
      required this.imageUrl})
      : _lessons = lessons;

  factory _$CourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseModelImplFromJson(json);

  @override
  final String courseTitle;
  @override
  final String courseDescription;
  @override
  final String courseOverview;
  @override
  final String tutorName;
  final List<String> _lessons;
  @override
  List<String> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final String videoUrl;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CourseModel(courseTitle: $courseTitle, courseDescription: $courseDescription, courseOverview: $courseOverview, tutorName: $tutorName, lessons: $lessons, videoUrl: $videoUrl, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseModelImpl &&
            (identical(other.courseTitle, courseTitle) ||
                other.courseTitle == courseTitle) &&
            (identical(other.courseDescription, courseDescription) ||
                other.courseDescription == courseDescription) &&
            (identical(other.courseOverview, courseOverview) ||
                other.courseOverview == courseOverview) &&
            (identical(other.tutorName, tutorName) ||
                other.tutorName == tutorName) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseTitle,
      courseDescription,
      courseOverview,
      tutorName,
      const DeepCollectionEquality().hash(_lessons),
      videoUrl,
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      __$$CourseModelImplCopyWithImpl<_$CourseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseModelImplToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {required final String courseTitle,
      required final String courseDescription,
      required final String courseOverview,
      required final String tutorName,
      required final List<String> lessons,
      required final String videoUrl,
      required final String imageUrl}) = _$CourseModelImpl;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$CourseModelImpl.fromJson;

  @override
  String get courseTitle;
  @override
  String get courseDescription;
  @override
  String get courseOverview;
  @override
  String get tutorName;
  @override
  List<String> get lessons;
  @override
  String get videoUrl;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CourseModelImplCopyWith<_$CourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
