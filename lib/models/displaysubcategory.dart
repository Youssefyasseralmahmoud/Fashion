// To parse this JSON data, do
//
//     final displaysubcategory = displaysubcategoryFromJson(jsonString);

import 'dart:convert';

List<Displaysubcategory> displaysubcategoryFromJson(String str) => List<Displaysubcategory>.from(json.decode(str).map((x) => Displaysubcategory.fromJson(x)));

String displaysubcategoryToJson(List<Displaysubcategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displaysubcategory {
  Displaysubcategory({
  required  this.id,
    required  this.masterCategoryId,
    required  this.name,
    required  this.createdAt,
    this.updatedAt,
    required  this.masterCategory,
  });

  int id;
  int masterCategoryId;
  String name;
  dynamic createdAt;
  dynamic updatedAt;
  MasterCategory masterCategory;

  factory Displaysubcategory.fromJson(Map<String, dynamic> json) => Displaysubcategory(
    id: json["id"],
    masterCategoryId: json["master_category_id"],
    name: json["name"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    masterCategory: MasterCategory.fromJson(json["master_category"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "master_category_id": masterCategoryId,
    "name": name,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "master_category": masterCategory.toJson(),
  };
}

class MasterCategory {
  MasterCategory({
    required  this.id,
    required  this.name,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;

  factory MasterCategory.fromJson(Map<String, dynamic> json) => MasterCategory(
    id: json["id"],
    name: json["name"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
