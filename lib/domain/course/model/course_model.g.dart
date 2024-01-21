// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      courseTitle: json['courseTitle'] as String,
      courseDescription: json['courseDescription'] as String,
      courseOverview: json['courseOverview'] as String,
      tutorName: json['tutorName'] as String,
      lessons:
          (json['lessons'] as List<dynamic>).map((e) => e as String).toList(),
      videoUrl: json['videoUrl'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'courseDescription': instance.courseDescription,
      'courseOverview': instance.courseOverview,
      'tutorName': instance.tutorName,
      'lessons': instance.lessons,
      'videoUrl': instance.videoUrl,
      'imageUrl': instance.imageUrl,
    };
