// To parse this JSON data, do
//
//     final displayallexpertforfilter = displayallexpertforfilterFromJson(jsonString);

import 'dart:convert';

List<Displayallexpertforfilter> displayallexpertforfilterFromJson(String str) => List<Displayallexpertforfilter>.from(json.decode(str).map((x) => Displayallexpertforfilter.fromJson(x)));

String displayallexpertforfilterToJson(List<Displayallexpertforfilter> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displayallexpertforfilter {
  Displayallexpertforfilter({
  required  this.id,
    required  this.name,
    required  this.email,
    required  this.password,
    required  this.dateOfBirth,
    required  this.gender,
    required  this.details,
    required  this.image,
    required  this.createdAt,
    required  this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfBirth;
  int gender;
  String details;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Displayallexpertforfilter.fromJson(Map<String, dynamic> json) => Displayallexpertforfilter(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    gender: json["gender"],
    details: json["details"] == null ? null : json["details"],
    image: json["image"] == null ? null : json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "gender": gender,
    "details": details == null ? null : details,
    "image": image == null ? null : image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}
