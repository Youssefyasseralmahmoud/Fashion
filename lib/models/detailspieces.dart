// // To parse this JSON data, do
// //
// //     final detailspieces = detailspiecesFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Detailspieces> detailspiecesFromJson(String str) => List<Detailspieces>.from(json.decode(str).map((x) => Detailspieces.fromJson(x)));
//
// String detailspiecesToJson(List<Detailspieces> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Detailspieces {
//   Detailspieces({
//   required  this.id,
//   required  this.companyId,
//   required  this.expertId,
//   required  this.type,
//   required  this.subCategoryId,
//   required  this.masterCategoryId,
//   required  this.seasonId,
//   required  this.usageId,
//   required  this.name,
//   required  this.image,
//    required this.price,
//    required this.gender,
//   required  this.numLiked,
//   required  this.createdAt,
//   required  this.updatedAt,
//   required  this.usage,
//   required  this.season,
//   required  this.subCategory,
//    required this.masterCategory,
//   required  this.pieceDetails,
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
//   MasterCategory usage;
//   MasterCategory season;
//   MasterCategory subCategory;
//   MasterCategory masterCategory;
//   List<PieceDetail> pieceDetails;
//
//   factory Detailspieces.fromJson(Map<String, dynamic> json) => Detailspieces(
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
//     usage: MasterCategory.fromJson(json["usage"]),
//     season: MasterCategory.fromJson(json["season"]),
//     subCategory: MasterCategory.fromJson(json["sub_category"]),
//     masterCategory: MasterCategory.fromJson(json["master_category"]),
//     pieceDetails: List<PieceDetail>.from(json["piece_details"].map((x) => PieceDetail.fromJson(x))),
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
//     "usage": usage.toJson(),
//     "season": season.toJson(),
//     "sub_category": subCategory.toJson(),
//     "master_category": masterCategory.toJson(),
//     "piece_details": List<dynamic>.from(pieceDetails.map((x) => x.toJson())),
//   };
// }
//
// class MasterCategory {
//   MasterCategory({
//   required  this.id,
//   required  this.name,
//     this.createdAt,
//     this.updatedAt,
//   required  this.masterCategoryId,
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
//
// class PieceDetail {
//   PieceDetail({
//   required  this.id,
//    required this.piecesId,
//   required  this.sizeId,
//   required  this.colorId,
//     this.image,
//   required  this.createdAt,
//   required  this.updatedAt,
//   required  this.color,
//   required  this.size,
//   });
//
//   int id;
//   int piecesId;
//   int sizeId;
//   int colorId;
//   dynamic image;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Color color;
//   Color size;
//
//   factory PieceDetail.fromJson(Map<String, dynamic> json) => PieceDetail(
//     id: json["id"],
//     piecesId: json["pieces_id"],
//     sizeId: json["size_id"],
//     colorId: json["color_id"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     color: Color.fromJson(json["color"]),
//     size: Color.fromJson(json["size"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "pieces_id": piecesId,
//     "size_id": sizeId,
//     "color_id": colorId,
//     "image": image,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "color": color.toJson(),
//     "size": size.toJson(),
//   };
// }
//
// class Color {
//   Color({
//   required  this.id,
//    required this.name,
//   });
//
//   int id;
//   String name;
//
//   factory Color.fromJson(Map<String, dynamic> json) => Color(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
// To parse this JSON data, do
//
//     final detailspieces = detailspiecesFromJson(jsonString);

import 'dart:convert';

List<Detailspieces> detailspiecesFromJson(String str) => List<Detailspieces>.from(json.decode(str).map((x) => Detailspieces.fromJson(x)));

String detailspiecesToJson(List<Detailspieces> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Detailspieces {
  Detailspieces({
  required  this.id,
    required this.companyId,
    required   this.expertId,
    required this.type,
    required  this.subCategoryId,
    required  this.masterCategoryId,
    required  this.seasonId,
    required  this.usageId,
    required  this.name,
    required  this.image,
    this.price,
    required  this.gender,
    required  this.numLiked,
    required  this.createdAt,
    required  this.updatedAt,
    required this.usage,
    required this.season,
    required this.subCategory,
    required  this.masterCategory,
    required  this.comment,
    required  this.pieceDetails,
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
  dynamic price;
  int gender;
  int numLiked;
  DateTime createdAt;
  DateTime updatedAt;
  MasterCategory usage;
  MasterCategory season;
  MasterCategory subCategory;
  MasterCategory masterCategory;
  List<Comment> comment;
  List<PieceDetail> pieceDetails;

  factory Detailspieces.fromJson(Map<String, dynamic> json) => Detailspieces(
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
    usage: MasterCategory.fromJson(json["usage"]),
    season: MasterCategory.fromJson(json["season"]),
    subCategory: MasterCategory.fromJson(json["sub_category"]),
    masterCategory: MasterCategory.fromJson(json["master_category"]),
    comment: List<Comment>.from(json["comment"].map((x) => Comment.fromJson(x))),
    pieceDetails: List<PieceDetail>.from(json["piece_details"].map((x) => PieceDetail.fromJson(x))),
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
    "usage": usage.toJson(),
    "season": season.toJson(),
    "sub_category": subCategory.toJson(),
    "master_category": masterCategory.toJson(),
    "comment": List<dynamic>.from(comment.map((x) => x.toJson())),
    "piece_details": List<dynamic>.from(pieceDetails.map((x) => x.toJson())),
  };
}

class Comment {
  Comment({
    required  this.id,
    required  this.details,
    required  this.type,
    required  this.adminId,
    required  this.companyId,
    required  this.expertId,
    required this.userId,
    required this.pieceId,
    required this.createdAt,
    required  this.updatedAt,
    this.company,
    this.expert,
    required this.tableUser,
  });

  int id;
  String details;
  String type;
  int adminId;
  int companyId;
  int expertId;
  int userId;
  int pieceId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic company;
  dynamic expert;
  TableUser tableUser;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    id: json["id"],
    details: json["details"],
    type: json["type"],
    adminId: json["admin_id"],
    companyId: json["company_id"],
    expertId: json["expert_id"],
    userId: json["user_id"],
    pieceId: json["piece_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    company: json["company"],
    expert: json["expert"],
    tableUser: TableUser.fromJson(json["table_user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "details": details,
    "type": type,
    "admin_id": adminId,
    "company_id": companyId,
    "expert_id": expertId,
    "user_id": userId,
    "piece_id": pieceId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "company": company,
    "expert": expert,
    "table_user": tableUser.toJson(),
  };
}

class TableUser {
  TableUser({
    required  this.id,
    required  this.name,
    required  this.email,
    required  this.password,
    this.dateOfBirth,
    required  this.gender,
    this.details,
    this.weight,
    this.length,
    this.preferedColor,
    this.preferedStyle,
    this.image,
    required  this.createdAt,
    required  this.updatedAt,
  });

  int id;
  String name;
  String email;
  String password;
  dynamic dateOfBirth;
  int gender;
  dynamic details;
  dynamic weight;
  dynamic length;
  dynamic preferedColor;
  dynamic preferedStyle;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;

  factory TableUser.fromJson(Map<String, dynamic> json) => TableUser(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfBirth: json["date_of_birth"],
    gender: json["gender"],
    details: json["details"],
    weight: json["weight"],
    length: json["length"],
    preferedColor: json["prefered_color"],
    preferedStyle: json["prefered_style"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "date_of_birth": dateOfBirth,
    "gender": gender,
    "details": details,
    "weight": weight,
    "length": length,
    "prefered_color": preferedColor,
    "prefered_style": preferedStyle,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class MasterCategory {
  MasterCategory({
    required this.id,
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
    required this.id,
    required  this.piecesId,
    required   this.sizeId,
    required  this.colorId,
    this.image,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.color,
    required  this.size,
  });

  int id;
  int piecesId;
  int sizeId;
  int colorId;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;
  Color color;
  Color size;

  factory PieceDetail.fromJson(Map<String, dynamic> json) => PieceDetail(
    id: json["id"],
    piecesId: json["pieces_id"],
    sizeId: json["size_id"],
    colorId: json["color_id"],
    image: json["image"],
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
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "color": color.toJson(),
    "size": size.toJson(),
  };
}

class Color {
  Color({
    required this.id,
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
// To parse this JSON data, do
//
//     final detailspieces = detailspiecesFromJson(jsonString);


