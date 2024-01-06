// To parse this JSON data, do
//
//     final suggestions = suggestionsFromJson(jsonString);

// import 'dart:convert';
//
// List<Suggestions> suggestionsFromJson(String str) => List<Suggestions>.from(json.decode(str).map((x) => Suggestions.fromJson(x)));
//
// String suggestionsToJson(List<Suggestions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Suggestions {
//   Suggestions({
//   required  this.id,
//     required  this.companyId,
//     required  this.expertId,
//     required  this.type,
//     required  this.subCategoryId,
//     required  this.masterCategoryId,
//     required  this.seasonId,
//     required  this.usageId,
//     required  this.name,
//     required  this.image,
//     this.price,
//     required  this.gender,
//     required  this.numLiked,
//     required  this.createdAt,
//     required  this.updatedAt,
//     required this.company,
//     required  this.expert,
//     required  this.usage,
//     required  this.season,
//     required  this.masterCategory,
//     required  this.subCategory,
//   });
//
//   int id;
//   int companyId;
//   int expertId;
//   String type;
//   int subCategoryId;
//   int masterCategoryId;
//   int seasonId;
//   int usageId;
//   String name;
//   String image;
//   dynamic price;
//   int gender;
//   int numLiked;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Company company;
//   dynamic expert;
//   MasterCategory usage;
//   MasterCategory season;
//   MasterCategory masterCategory;
//   MasterCategory subCategory;
//
//   factory Suggestions.fromJson(Map<String, dynamic> json) => Suggestions(
//     id: json["id"],
//     companyId: json["company_id"],
//     expertId: json["expert_id"],
//     type: json["type"],
//     subCategoryId: json["sub_category_id"],
//     masterCategoryId: json["master_category_id"],
//     seasonId: json["season_id"],
//     usageId: json["usage_id"],
//     name: json["name"],
//     image: json["image"],
//     price: json["price"],
//     gender: json["gender"],
//     numLiked: json["num_liked"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     company: Company.fromJson(json["company"]),
//     expert: json["expert"],
//     usage: MasterCategory.fromJson(json["usage"]),
//     season: MasterCategory.fromJson(json["season"]),
//     masterCategory: MasterCategory.fromJson(json["master_category"]),
//     subCategory: MasterCategory.fromJson(json["sub_category"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "company_id": companyId,
//     "expert_id": expertId,
//     "type": type,
//     "sub_category_id": subCategoryId,
//     "master_category_id": masterCategoryId,
//     "season_id": seasonId,
//     "usage_id": usageId,
//     "name": name,
//     "image": image,
//     "price": price,
//     "gender": gender,
//     "num_liked": numLiked,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "company": company.toJson(),
//     "expert": expert,
//     "usage": usage.toJson(),
//     "season": season.toJson(),
//     "master_category": masterCategory.toJson(),
//     "sub_category": subCategory.toJson(),
//   };
// }
//
// class Company {
//   Company({
//     required  this.id,
//     required this.name,
//     required  this.email,
//     required  this.password,
//     required  this.dateOfEstablishment,
//     required  this.location,
//     required  this.majorCategory,
//     required  this.image,
//     this.details,
//     required  this.numFollowed,
//     required this.createdAt,
//     required this.updatedAt,
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
//   String image;
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
// class MasterCategory {
//   MasterCategory({
//     required  this.id,
//     required  this.name,
//     this.createdAt,
//     this.updatedAt,
//     required  this.masterCategoryId,
//   });
//
//   int id;
//   String name;
//   dynamic createdAt;
//   dynamic updatedAt;
//   int masterCategoryId;
//
//   factory MasterCategory.fromJson(Map<String, dynamic> json) => MasterCategory(
//     id: json["id"],
//     name: json["name"],
//     createdAt: json["created_at"],
//     updatedAt: json["updated_at"],
//     masterCategoryId: json["master_category_id"] == null ? null : json["master_category_id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//     "master_category_id": masterCategoryId == null ? null : masterCategoryId,
//   };
// }
// To parse this JSON data, do
//
//     final suggestions = suggestionsFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Suggestions> suggestionsFromJson(String str) => List<Suggestions>.from(json.decode(str).map((x) => Suggestions.fromJson(x)));
//
// String suggestionsToJson(List<Suggestions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Suggestions {
//   Suggestions({
//   required  this.id,
//     required  this.companyId,
//     required  this.expertId,
//     required  this.type,
//     required  this.subCategoryId,
//     required  this.masterCategoryId,
//     required  this.seasonId,
//     required  this.usageId,
//     required  this.name,
//     required  this.image,
//     required  this.price,
//     required  this.gender,
//     required  this.numLiked,
//     required  this.createdAt,
//     required this.updatedAt,
//     required this.company,
//     this.expert,
//     required   this.usage,
//     required this.season,
//     required  this.masterCategory,
//     required this.subCategory,
//   });
//
//   int id;
//   int companyId;
//   int expertId;
//   String type;
//   int subCategoryId;
//   int masterCategoryId;
//   int seasonId;
//   int usageId;
//   String name;
//   String image;
//   int price;
//   int gender;
//   int numLiked;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Company company;
//   dynamic expert;
//   MasterCategory usage;
//   MasterCategory season;
//   MasterCategory masterCategory;
//   MasterCategory subCategory;
//
//   factory Suggestions.fromJson(Map<String, dynamic> json) => Suggestions(
//     id: json["id"],
//     companyId: json["company_id"],
//     expertId: json["expert_id"],
//     type: json["type"],
//     subCategoryId: json["sub_category_id"],
//     masterCategoryId: json["master_category_id"],
//     seasonId: json["season_id"],
//     usageId: json["usage_id"],
//     name: json["name"],
//     image: json["image"],
//     price: json["price"] == null ? null : json["price"],
//     gender: json["gender"],
//     numLiked: json["num_liked"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     company: Company.fromJson(json["company"]),
//     expert: json["expert"],
//     usage: MasterCategory.fromJson(json["usage"]),
//     season: MasterCategory.fromJson(json["season"]),
//     masterCategory: MasterCategory.fromJson(json["master_category"]),
//     subCategory: MasterCategory.fromJson(json["sub_category"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "company_id": companyId,
//     "expert_id": expertId,
//     "type": type,
//     "sub_category_id": subCategoryId,
//     "master_category_id": masterCategoryId,
//     "season_id": seasonId,
//     "usage_id": usageId,
//     "name": name,
//     "image": image,
//     "price": price == null ? null : price,
//     "gender": gender,
//     "num_liked": numLiked,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "company": company.toJson(),
//     "expert": expert,
//     "usage": usage.toJson(),
//     "season": season.toJson(),
//     "master_category": masterCategory.toJson(),
//     "sub_category": subCategory.toJson(),
//   };
// }
//
// class Company {
//   Company({
//     required  this.id,
//     required  this.name,
//     required this.email,
//     required  this.password,
//     required  this.dateOfEstablishment,
//     required  this.location,
//     required  this.majorCategory,
//     required this.image,
//     this.details,
//     required  this.numFollowed,
//     required  this.createdAt,
//     required this.updatedAt,
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
//   String image;
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
//     image: json["image"] == null ? null : json["image"],
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
//     "image": image == null ? null : image,
//     "details": details,
//     "num_followed": numFollowed,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt,
//   };
// }
//
// class MasterCategory {
//   MasterCategory({
//     required  this.id,
//     required  this.name,
//     this.createdAt,
//     this.updatedAt,
//     required  this.masterCategoryId,
//   });
//
//   int id;
//   String name;
//   dynamic createdAt;
//   dynamic updatedAt;
//   int masterCategoryId;
//
//   factory MasterCategory.fromJson(Map<String, dynamic> json) => MasterCategory(
//     id: json["id"],
//     name: json["name"],
//     createdAt: json["created_at"],
//     updatedAt: json["updated_at"],
//     masterCategoryId: json["master_category_id"] == null ? null : json["master_category_id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//     "master_category_id": masterCategoryId == null ? null : masterCategoryId,
//   };
// }

// To parse this JSON data, do
//
//     final suggestions = suggestionsFromJson(jsonString);

import 'dart:convert';

List<Suggestions> suggestionsFromJson(String str) => List<Suggestions>.from(json.decode(str).map((x) => Suggestions.fromJson(x)));

String suggestionsToJson(List<Suggestions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Suggestions {
  Suggestions({
    required  this.id,
    required  this.companyId,
    required  this.expertId,
    required this.type,
    required  this.subCategoryId,
    required  this.masterCategoryId,
    required  this.seasonId,
    required  this.usageId,
    required this.name,
    required  this.image,
    required  this.price,
    required  this.gender,
    required this.numLiked,
    required this.createdAt,
    required  this.updatedAt,
    required  this.company,
    this.expert,
    required  this.usage,
    required  this.season,
    required this.masterCategory,
    required  this.subCategory,
  });

  int id;
  int companyId;
  int expertId;
  String type;
  int subCategoryId;
  int masterCategoryId;
  int seasonId;
  int usageId;
  String name;
  String image;
  int price;
  int gender;
  int numLiked;
  DateTime createdAt;
  DateTime updatedAt;
  Company company;
  dynamic expert;
  MasterCategory usage;
  MasterCategory season;
  MasterCategory masterCategory;
  MasterCategory subCategory;

  factory Suggestions.fromJson(Map<String, dynamic> json) => Suggestions(
    id: json["id"],
    companyId: json["company_id"],
    expertId: json["expert_id"],
    type: json["type"],
    subCategoryId: json["sub_category_id"],
    masterCategoryId: json["master_category_id"],
    seasonId: json["season_id"],
    usageId: json["usage_id"],
    name: json["name"],
    image: json["image"],
    price: json["price"] == null ? null : json["price"],
    gender: json["gender"],
    numLiked: json["num_liked"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    company: Company.fromJson(json["company"]),
    expert: json["expert"],
    usage: MasterCategory.fromJson(json["usage"]),
    season: MasterCategory.fromJson(json["season"]),
    masterCategory: MasterCategory.fromJson(json["master_category"]),
    subCategory: MasterCategory.fromJson(json["sub_category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_id": companyId,
    "expert_id": expertId,
    "type": type,
    "sub_category_id": subCategoryId,
    "master_category_id": masterCategoryId,
    "season_id": seasonId,
    "usage_id": usageId,
    "name": name,
    "image": image,
    "price": price == null ? null : price,
    "gender": gender,
    "num_liked": numLiked,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "company": company.toJson(),
    "expert": expert,
    "usage": usage.toJson(),
    "season": season.toJson(),
    "master_category": masterCategory.toJson(),
    "sub_category": subCategory.toJson(),
  };
}

class Company {
  Company({
    required  this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.dateOfEstablishment,
    required this.location,
    required  this.majorCategory,
    required  this.image,
    this.details,
    required this.numFollowed,
    required this.createdAt,
    required this.updatedAt,
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

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
    location: json["location"],
    majorCategory: json["major_category"],
    image: json["image"] == null ? null : json["image"],
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
    "image": image == null ? null : image,
    "details": details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class MasterCategory {
  MasterCategory({
    required  this.id,
    required  this.name,
    this.createdAt,
    this.updatedAt,
   required this.masterCategoryId,
  });

  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;
  int masterCategoryId;

  factory MasterCategory.fromJson(Map<String, dynamic> json) => MasterCategory(
    id: json["id"],
    name: json["name"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    masterCategoryId: json["master_category_id"] == null ? null : json["master_category_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "master_category_id": masterCategoryId == null ? null : masterCategoryId,
  };
}
