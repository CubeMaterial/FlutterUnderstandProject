// import 'dart:math';

import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_understand_project/Main/app_home.dart';

@JsonSerializable()
class Lecture {
  String lectureName;
  List<String> images;
  String link;

  Lecture({
    required this.lectureName,
    required this.images,
    required this.link,
  });

  // // JSON → 객체
  // factory Lecture.fromJson(Map<String, String> json) => _$UserFromJson(json);

  // // 객체 → JSON
  // Map<String, String> toJson() => toJson()(this);
}
