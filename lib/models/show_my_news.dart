// To parse this JSON data, do
//
//     final showMyNews = showMyNewsFromJson(jsonString);

import 'dart:convert';

List<ShowMyNews> showMyNewsFromJson(String str) => List<ShowMyNews>.from(json.decode(str).map((x) => ShowMyNews.fromJson(x)));

String showMyNewsToJson(List<ShowMyNews> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShowMyNews {
  ShowMyNews({
  required  this.id,
  required  this.adminId,
  required  this.companyId,
  required  this.expertId,
  required  this.type,
  required  this.title,
   required this.details,
  required  this.image,
  required  this.createdAt,
   required this.updatedAt,
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

  factory ShowMyNews.fromJson(Map<String, dynamic> json) => ShowMyNews(
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
  };
}
