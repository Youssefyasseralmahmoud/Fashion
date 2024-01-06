// To parse this JSON data, do
//
//     final blockCompanies = blockCompaniesFromJson(jsonString);

import 'dart:convert';

List<BlockCompanies> blockCompaniesFromJson(String str) => List<BlockCompanies>.from(json.decode(str).map((x) => BlockCompanies.fromJson(x)));

String blockCompaniesToJson(List<BlockCompanies> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlockCompanies {
  BlockCompanies({
  required  this.id,
  required  this.name,
  required  this.email,
  required  this.password,
  required  this.dateOfEstablishment,
  required  this.location,
  required  this.majorCategory,
  required  this.image,
  required  this.details,
  required  this.numFollowed,
  required  this.createdAt,
  required  this.updatedAt,
  required  this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfEstablishment;
  String location;
  String majorCategory;
  String image;
  dynamic details;
  int numFollowed;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  factory BlockCompanies.fromJson(Map<String, dynamic> json) => BlockCompanies(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
    location: json["location"],
    majorCategory: json["major_category"],
    image: json["image"],
    details: json["details"],
    numFollowed: json["num_followed"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: DateTime.parse(json["deleted_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "date_of_establishment": dateOfEstablishment.toIso8601String(),
    "location": location,
    "major_category": majorCategory,
    "image": image,
    "details": details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt.toIso8601String(),
  };
}
