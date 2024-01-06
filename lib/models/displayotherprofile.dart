// To parse this JSON data, do
//
//     final displayotherprofile = displayotherprofileFromJson(jsonString);

import 'dart:convert';

List<Displayotherprofile> displayotherprofileFromJson(String str) => List<Displayotherprofile>.from(json.decode(str).map((x) => Displayotherprofile.fromJson(x)));

String displayotherprofileToJson(List<Displayotherprofile> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displayotherprofile {
  Displayotherprofile({
   required this.id,
    required  this.name,
    required  this.email,
    required this.password,
    required  this.dateOfEstablishment,
    required  this.location,
    required  this.majorCategory,
    required  this.image,
    this.details,
    required  this.numFollowed,
    required  this.createdAt,
    required  this.updatedAt,
    this.deletedAt,
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
  dynamic deletedAt;

  factory Displayotherprofile.fromJson(Map<String, dynamic> json) => Displayotherprofile(
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
    deletedAt: json["deleted_at"],
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
    "deleted_at": deletedAt,
  };
}
