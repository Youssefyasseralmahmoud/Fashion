// To parse this JSON data, do
//
//     final displayfavoritepieces = displayfavoritepiecesFromJson(jsonString);

import 'dart:convert';

List<Displayfavoritepieces> displayfavoritepiecesFromJson(String str) => List<Displayfavoritepieces>.from(json.decode(str).map((x) => Displayfavoritepieces.fromJson(x)));

String displayfavoritepiecesToJson(List<Displayfavoritepieces> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displayfavoritepieces {
  Displayfavoritepieces({
  required  this.id,
    required this.companyId,
    required  this.expertId,
    required this.type,
    required  this.subCategoryId,
    required  this.masterCategoryId,
    required  this.seasonId,
    required  this.usageId,
    required this.name,
    required this.image,
    required this.price,
    required this.gender,
    required this.numLiked,
    required  this.createdAt,
    required this.updatedAt,
    required  this.subCategoryName,
    required  this.masterCategoryName,
    required  this.usageName,
    required this.seasonName,
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
  String subCategoryName;
  String masterCategoryName;
  String usageName;
  String seasonName;

  factory Displayfavoritepieces.fromJson(Map<String, dynamic> json) => Displayfavoritepieces(
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
    subCategoryName: json["sub_category_name"],
    masterCategoryName: json["master_category_name"],
    usageName: json["usage_name"],
    seasonName: json["season_name"],
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
    "sub_category_name": subCategoryName,
    "master_category_name": masterCategoryName,
    "usage_name": usageName,
    "season_name": seasonName,
  };
}
