// To parse this JSON data, do
//
//     final piecesforcompany = piecesforcompanyFromJson(jsonString);

import 'dart:convert';

List<Piecesforcompany> piecesforcompanyFromJson(String str) => List<Piecesforcompany>.from(json.decode(str).map((x) => Piecesforcompany.fromJson(x)));

String piecesforcompanyToJson(List<Piecesforcompany> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Piecesforcompany {
  Piecesforcompany({
   required this.id,
    required  this.companyId,
    required  this.expertId,
    required  this.type,
    required  this.subCategoryId,
    required  this.masterCategoryId,
    required  this.seasonId,
    required  this.usageId,
    required this.name,
    required  this.image,
    required  this.price,
    required  this.gender,
    required  this.numLiked,
    required   this.createdAt,
    required  this.updatedAt,
    required this.like,
    required this.usage,
    required  this.season,
    required this.subCategory,
    required this.masterCategory,
    required this.company,
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
  List<Like> like;
  MasterCategory usage;
  MasterCategory season;
  MasterCategory subCategory;
  MasterCategory masterCategory;
  Company company;

  factory Piecesforcompany.fromJson(Map<String, dynamic> json) => Piecesforcompany(
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
    price: json["price"],
    gender: json["gender"],
    numLiked: json["num_liked"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    like: List<Like>.from(json["like"].map((x) => Like.fromJson(x))),
    usage: MasterCategory.fromJson(json["usage"]),
    season: MasterCategory.fromJson(json["season"]),
    subCategory: MasterCategory.fromJson(json["sub_category"]),
    masterCategory: MasterCategory.fromJson(json["master_category"]),
    company: Company.fromJson(json["company"]),
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
    "price": price,
    "gender": gender,
    "num_liked": numLiked,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "like": List<dynamic>.from(like.map((x) => x.toJson())),
    "usage": usage.toJson(),
    "season": season.toJson(),
    "sub_category": subCategory.toJson(),
    "master_category": masterCategory.toJson(),
    "company": company.toJson(),
  };
}

class Company {
  Company({
    required  this.id,
    required  this.name,
    required  this.email,
    required this.password,
    required  this.dateOfEstablishment,
    required  this.location,
    required  this.majorCategory,
    this.image,
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

class Like {
  Like({
    required this.id,
    required this.piecesId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int piecesId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Like.fromJson(Map<String, dynamic> json) => Like(
    id: json["id"],
    piecesId: json["pieces_id"],
    userId: json["user_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pieces_id": piecesId,
    "user_id": userId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
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
