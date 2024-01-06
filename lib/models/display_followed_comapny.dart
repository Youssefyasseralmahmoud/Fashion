// To parse this JSON data, do
//
//     final displayfollowedcompany = displayfollowedcompanyFromJson(jsonString);

import 'dart:convert';

List<Displayfollowedcompany> displayfollowedcompanyFromJson(String str) => List<Displayfollowedcompany>.from(json.decode(str).map((x) => Displayfollowedcompany.fromJson(x)));

String displayfollowedcompanyToJson(List<Displayfollowedcompany> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displayfollowedcompany {
  Displayfollowedcompany({
   required this.id,
    required  this.companyId,
    required   this.userId,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.company,
  });

  int id;
  int companyId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;
  Company? company;

  factory Displayfollowedcompany.fromJson(Map<String, dynamic> json) => Displayfollowedcompany(
    id: json["id"],
    companyId: json["company_id"],
    userId: json["user_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_id": companyId,
    "user_id": userId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "company": company == null ? null : company!.toJson(),
  };
}

class Company {
  Company({
    required  this.id,
    required this.name,
    required  this.email,
    required  this.password,
    required  this.dateOfEstablishment,
    required this.location,
    required  this.majorCategory,
    this.image,
    this.details,
    required this.numFollowed,
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
  dynamic image;
  dynamic details;
  int numFollowed;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
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
