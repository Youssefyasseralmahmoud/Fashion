// To parse this JSON data, do
//
//     final collections = collectionsFromJson(jsonString);

import 'dart:convert';

List<Collections> collectionsFromJson(String str) => List<Collections>.from(json.decode(str).map((x) => Collections.fromJson(x)));

String collectionsToJson(List<Collections> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Collections {
  Collections({
    required this.id,
    required this.name,
    required this.image,
    required this.companyId,
    required this.createdAt,
    required this.updatedAt,
   // required this.company,
  });

  int id;
  String name;
  String image;
  int companyId;
  DateTime createdAt;
  DateTime updatedAt;
 // Company company;

  factory Collections.fromJson(Map<String, dynamic> json) => Collections(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    companyId: json["company_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
   // company: json["company"]
        //== null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "company_id": companyId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
   // "company": company
        //== null ? null : company.toJson(),
  };
}

// class Company {
//   Company({
//    required this.id,
//     required this.name,
//    required this.email,
//    required this.password,
//    required this.dateOfEstablishment,
//    required this.location,
//    required this.majorCategory,
//    required this.image,
//   required  this.details,
//    required this.numFollowed,
//    required this.createdAt,
//    required this.updatedAt,
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
