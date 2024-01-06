// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    required this.id,
  required  this.adminId,
  required  this.companyId,
   required this.expertId,
   required this.type,
  required  this.title,
  required  this.details,
  required  this.image,
  required  this.createdAt,
   required this.updatedAt,
 // required   this.admin,
 //  required  this.expert,
 // required   this.company,
  });

  int id;
  int adminId;
  int companyId;
  int expertId;
  String type;
  String title;
  String details;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  // Admin admin;
  // Expert expert;
  // Company company;

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json["id"],
    adminId: json["admin_id"],
    companyId: json["company_id"],
    expertId: json["expert_id"],
    type: json["type"],
    title: json["title"],
    details: json["details"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    // admin: json["admin"] == null ? null : Admin.fromJson(json["admin"]),
    // expert: json["expert"] == null ? null : Expert.fromJson(json["expert"]),
    // company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "admin_id": adminId,
    "company_id": companyId,
    "expert_id": expertId,
    "type": type,
    "title": title,
    "details": details,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    // "admin": admin == null ? null : admin.toJson(),
    // "expert": expert == null ? null : expert.toJson(),
    // "company": company == null ? null : company.toJson(),
  };
}

// class Admin {
//   Admin({
//     this.id,
//     this.name,
//     this.email,
//     this.password,
//     this.image,
//     this.createdAt,
//     this.updatedAt,
//   });
//
//   int id;
//   dynamic name;
//   String email;
//   String password;
//   dynamic image;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   factory Admin.fromJson(Map<String, dynamic> json) => Admin(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "password": password,
//     "image": image,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }
//
// class Company {
//   Company({
//     this.id,
//     this.name,
//     this.email,
//     this.password,
//     this.dateOfEstablishment,
//     this.location,
//     this.majorCategory,
//     this.image,
//     this.details,
//     this.numFollowed,
//     this.createdAt,
//     this.updatedAt,
//     this.deletedAt,
//   });
//
//   int id;
//   String name;
//   String email;
//   String password;
//   DateTime dateOfEstablishment;
//   String location;
//   String majorCategory;
//   dynamic image;
//   dynamic details;
//   int numFollowed;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//
//   factory Company.fromJson(Map<String, dynamic> json) => Company(
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
//     deletedAt: json["deleted_at"],
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
//     "deleted_at": deletedAt,
//   };
// }
//
// class Expert {
//   Expert({
//     this.id,
//     this.name,
//     this.email,
//     this.password,
//     this.dateOfBirth,
//     this.gender,
//     this.details,
//     this.image,
//     this.createdAt,
//     this.updatedAt,
//     this.deletedAt,
//   });
//
//   int id;
//   String name;
//   String email;
//   String password;
//   DateTime dateOfBirth;
//   int gender;
//   dynamic details;
//   dynamic image;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//
//   factory Expert.fromJson(Map<String, dynamic> json) => Expert(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     dateOfBirth: DateTime.parse(json["date_of_birth"]),
//     gender: json["gender"],
//     details: json["details"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     deletedAt: json["deleted_at"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "password": password,
//     "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
//     "gender": gender,
//     "details": details,
//     "image": image,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt,
//   };
// }
