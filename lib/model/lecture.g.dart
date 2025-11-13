// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lecture _$LectureFromJson(Map<String, dynamic> json) => Lecture(
  lectureName: json['lectureName'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  link: json['link'] as String,
  type: json['type'] as String, 
);

Map<String, dynamic> _$LectureToJson(Lecture instance) => <String, dynamic>{
  'lectureName': instance.lectureName,
  'images': instance.images,
  'link': instance.link,
  'type': instance.type,  
};
