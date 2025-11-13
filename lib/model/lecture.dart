import 'package:json_annotation/json_annotation.dart';
part 'lecture.g.dart'; 
@JsonSerializable()
class Lecture {
  String lectureName;
  List<String> images;
  String link;
  String type;

  Lecture({
    required this.lectureName,
    required this.images,
    required this.link,
    required this.type
  });

 factory Lecture.fromJson(Map<String, dynamic> json) => _$LectureFromJson(json);
  Map<String, dynamic> toJson() => _$LectureToJson(this);

  
}
