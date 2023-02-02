import 'package:json_annotation/json_annotation.dart';
import 'package:network_request/model/name.dart';
import 'package:network_request/model/picture_model.dart';

part 'person.g.dart';
// part 'name_model.g.dart';
// part 'picture_model.g.dart';

@JsonSerializable()
class Person {
  Name? name;
  String? phone;
  String? email;
  PictureModel? picture;

  Person({this.name, this.phone, this.email, this.picture});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

//
// @JsonSerializable()
// class NameModel {
//   String title;
//   String first;
//   String last;
//
//   NameModel({this.title, this.first, this.last});
//
//   factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$NameModelToJson(this);
// }
//
// @JsonSerializable()
// class PictureModel {
//   String thumbnail;
//
//   PictureModel({this.thumbnail});
//
//   factory PictureModel.fromJson(Map<String, dynamic> json) => _$PictureModelFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PictureModelToJson(this);
// }