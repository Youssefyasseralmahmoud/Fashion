// To parse this JSON data, do
//
//     final searchbox = searchboxFromJson(jsonString);

import 'dart:convert';

Searchbox searchboxFromJson(String str) => Searchbox.fromJson(json.decode(str));

String searchboxToJson(Searchbox data) => json.encode(data.toJson());

class Searchbox {
  Searchbox({
  required  this.pieces,
  required  this.company,
  required  this.expert,
  });

  List<Piece> pieces;
  List<Company> company;
  List<dynamic> expert;

  factory Searchbox.fromJson(Map<String, dynamic> json) => Searchbox(
    pieces: List<Piece>.from(json["pieces"].map((x) => Piece.fromJson(x))),
    company: List<Company>.from(json["company"].map((x) => Company.fromJson(x))),
    expert: List<dynamic>.from(json["expert"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "pieces": List<dynamic>.from(pieces.map((x) => x.toJson())),
    "company": List<dynamic>.from(company.map((x) => x.toJson())),
    "expert": List<dynamic>.from(expert.map((x) => x)),
  };
}

class Company {
  Company({
   required this.id,
   required this.name,
  required  this.email,
  required  this.password,
  required  this.dateOfEstablishment,
   required this.majorCategory,
  required  this.image,
   required this.details,
  required  this.numFollowed,
   required this.createdAt,
  required  this.updatedAt,
  required  this.deletedAt,
   required this.count,
    required this.location,
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
  int count;

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
    count: json["count"],
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
    "count": count,
  };
}

class Piece {
  Piece({
  required  this.id,
  required  this.companyId,
  required  this.expertId,
  required  this.type,
  required  this.subCategoryId,
   required this.masterCategoryId,
  required  this.seasonId,
   required this.usageId,
  required  this.name,
  required  this.image,
 required   this.price,
  required  this.gender,
 required   this.numLiked,
  required  this.createdAt,
  required  this.updatedAt,
  required  this.count,
   required this.usage,
  required  this.season,
  required  this.subCategory,
  required  this.masterCategory,
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
  int count;
  MasterCategory usage;
  MasterCategory season;
  MasterCategory subCategory;
  MasterCategory masterCategory;

  factory Piece.fromJson(Map<String, dynamic> json) => Piece(
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
    count: json["count"],
    usage: MasterCategory.fromJson(json["usage"]),
    season: MasterCategory.fromJson(json["season"]),
    subCategory: MasterCategory.fromJson(json["sub_category"]),
    masterCategory: MasterCategory.fromJson(json["master_category"]),
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
    "count": count,
    "usage": usage.toJson(),
    "season": season.toJson(),
    "sub_category": subCategory.toJson(),
    "master_category": masterCategory.toJson(),
  };
}

class MasterCategory {
  MasterCategory({
  required  this.id,
  required  this.name,
    this.createdAt,
    this.updatedAt,
  required  this.masterCategoryId,
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
