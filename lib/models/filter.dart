// To parse this JSON data, do
//
//     final filter = filterFromJson(jsonString);

import 'dart:convert';

List<Filter> filterFromJson(String str) => List<Filter>.from(json.decode(str).map((x) => Filter.fromJson(x)));

String filterToJson(List<Filter> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Filter {
  Filter({
  required  this.id,
    required this.companyId,
    required this.expertId,
    required this.type,
    required this.subCategoryId,
    required this.masterCategoryId,
    required this.seasonId,
    required this.usageId,
    required this.name,
    required  this.image,
    required  this.price,
    required  this.gender,
    required  this.numLiked,
    required this.createdAt,
    required  this.updatedAt,
    required  this.pieceDetails,
    required  this.usage,
    required  this.season,
    required  this.masterCategory,
    required this.subCategory,
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
  List<PieceDetail> pieceDetails;
  MasterCategory usage;
  MasterCategory season;
  MasterCategory masterCategory;
  MasterCategory subCategory;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
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
    pieceDetails: List<PieceDetail>.from(json["piece_details"].map((x) => PieceDetail.fromJson(x))),
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
    "price": price,
    "gender": gender,
    "num_liked": numLiked,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "piece_details": List<dynamic>.from(pieceDetails.map((x) => x.toJson())),
    "usage": usage.toJson(),
    "season": season.toJson(),
    "master_category": masterCategory.toJson(),
    "sub_category": subCategory.toJson(),
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

class PieceDetail {
  PieceDetail({
    required  this.id,
    required  this.piecesId,
    required  this.sizeId,
    required  this.colorId,
    required  this.image,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.color,
    required  this.size,
  });

  int id;
  int piecesId;
  int sizeId;
  int colorId;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  Color color;
  Color size;

  factory PieceDetail.fromJson(Map<String, dynamic> json) => PieceDetail(
    id: json["id"],
    piecesId: json["pieces_id"],
    sizeId: json["size_id"],
    colorId: json["color_id"],
    image: json["image"] == null ? null : json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    color: Color.fromJson(json["color"]),
    size: Color.fromJson(json["size"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pieces_id": piecesId,
    "size_id": sizeId,
    "color_id": colorId,
    "image": image == null ? null : image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "color": color.toJson(),
    "size": size.toJson(),
  };
}

class Color {
  Color({
    required  this.id,
    required  this.name,
  });

  int id;
  String name;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
