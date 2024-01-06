// To parse this JSON data, do
//
//     final blockExpert = blockExpertFromJson(jsonString);

// import 'dart:convert';
//
// List<BlockExpert> blockExpertFromJson(String str) => List<BlockExpert>.from(json.decode(str).map((x) => BlockExpert.fromJson(x)));
//
// String blockExpertToJson(List<BlockExpert> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class BlockExpert {
//   BlockExpert({
//   required  this.id,
//   required  this.name,
//   required  this.email,
//   required  this.password,
//   required  this.dateOfEstablishment,
//   required  this.location,
//   required  this.majorCategory,
//   required  this.image,
//   required  this.details,
//   required  this.numFollowed,
//   required  this.createdAt,
//   required  this.updatedAt,
//   required  this.deletedAt,
//   });
//
//   int id;
//   String name;
//   String email;
//   String password;
//   DateTime dateOfEstablishment;
//   String location;
//   String majorCategory;
//   String image;
//   dynamic details;
//   int numFollowed;
//   DateTime createdAt;
//   DateTime updatedAt;
//   DateTime deletedAt;
//
//   factory BlockExpert.fromJson(Map<String, dynamic> json) => BlockExpert(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
//     location: json["location"],
//     majorCategory: json["major_category"],
//     image: json["image"],
//     details: json["details"],
//     numFollowed: json["num_followed"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     deletedAt: DateTime.parse(json["deleted_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "password": password,
//     "date_of_establishment": dateOfEstablishment.toIso8601String(),
//     "location": location,
//     "major_category": majorCategory,
//     "image": image,
//     "details": details,
//     "num_followed": numFollowed,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt.toIso8601String(),
//   };
// }
// To parse this JSON data, do
//
//     final blockexpert = blockexpertFromJson(jsonString);

// To parse this JSON data, do
//
//     final blockExpert = blockExpertFromJson(jsonString);

import 'dart:convert';

List<BlockExpert> blockExpertFromJson(String str) => List<BlockExpert>.from(json.decode(str).map((x) => BlockExpert.fromJson(x)));

String blockExpertToJson(List<BlockExpert> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlockExpert {
  BlockExpert({
  required  this.id,
    required  this.name,
    required  this.email,
    required this.password,
    required this.dateOfBirth,
    required this.gender,
    this.details,
    this.image,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfBirth;
  int gender;
  dynamic details;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  factory BlockExpert.fromJson(Map<String, dynamic> json) => BlockExpert(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    gender: json["gender"],
    details: json["details"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: DateTime.parse(json["deleted_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "gender": gender,
    "details": details,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt.toIso8601String(),
  };
}
