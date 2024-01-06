// // To parse this JSON data, do
// //
// //     final detailscollections = detailscollectionsFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Detailscollections> detailscollectionsFromJson(String str) => List<Detailscollections>.from(json.decode(str).map((x) => Detailscollections.fromJson(x)));
//
// String detailscollectionsToJson(List<Detailscollections> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Detailscollections {
//   Detailscollections({
//   required  this.id,
//     required this.type,
//     required  this.collectionId,
//     required this.pieceId,
//     required this.pieceDetailsId,
//     required this.collections,
//     this.pieceDetails,
//   });
//
//   int id;
//   String type;
//   int collectionId;
//   int pieceId;
//   int pieceDetailsId;
//   Collections collections;
//   dynamic pieceDetails;
//
//   factory Detailscollections.fromJson(Map<String, dynamic> json) => Detailscollections(
//     id: json["id"],
//     type: json["type"],
//     collectionId: json["collection_id"],
//     pieceId: json["piece_id"],
//     pieceDetailsId: json["pieceDetails_id"],
//     collections: Collections.fromJson(json["collections"]),
//     pieceDetails: json["piece_details"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "type": type,
//     "collection_id": collectionId,
//     "piece_id": pieceId,
//     "pieceDetails_id": pieceDetailsId,
//     "collections": collections.toJson(),
//     "piece_details": pieceDetails,
//   };
// }
//
// class Collections {
//   Collections({
//     required this.id,
//     required this.name,
//     required this.image,
//     required  this.companyId,
//     required  this.createdAt,
//     required  this.updatedAt,
//   });
//
//   int id;
//   String name;
//   String image;
//   int companyId;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   factory Collections.fromJson(Map<String, dynamic> json) => Collections(
//     id: json["id"],
//     name: json["name"],
//     image: json["image"],
//     companyId: json["company_id"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "image": image,
//     "company_id": companyId,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }

// To parse this JSON data, do
//
//     final detailscollections = detailscollectionsFromJson(jsonString);


// import 'dart:convert';
//
// List<Detailscollections> detailscollectionsFromJson(String str) => List<Detailscollections>.from(json.decode(str).map((x) => Detailscollections.fromJson(x)));
//
// String detailscollectionsToJson(List<Detailscollections> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Detailscollections {
//   Detailscollections({
//   required  this.id,
//     required  this.type,
//     required  this.collectionId,
//     required this.pieceId,
//     required  this.pieceDetailsId,
//     required  this.pieceDetails,
//     required this.pieces,
//   });
//
//   int id;
//   String type;
//   int collectionId;
//   int pieceId;
//   int pieceDetailsId;
//   PieceDetails? pieceDetails;
//   Pieces? pieces;
//
//   factory Detailscollections.fromJson(Map<String, dynamic> json) => Detailscollections(
//     id: json["id"],
//     type: json["type"],
//     collectionId: json["collection_id"],
//     pieceId: json["piece_id"],
//     pieceDetailsId: json["pieceDetails_id"],
//     pieceDetails: json["piece_details"] == null ? null : PieceDetails.fromJson(json["piece_details"]),
//     pieces: json["pieces"] == null ? null : Pieces.fromJson(json["pieces"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "type": type,
//     "collection_id": collectionId,
//     "piece_id": pieceId,
//     "pieceDetails_id": pieceDetailsId,
//     "piece_details": pieceDetails == null ? null : pieceDetails!.toJson(),
//     "pieces": pieces == null ? null : pieces!.toJson(),
//   };
// }
//
// class PieceDetails {
//   PieceDetails({
//     required  this.id,
//     required this.piecesId,
//     required  this.sizeId,
//     required  this.colorId,
//     required  this.image,
//     required  this.createdAt,
//     required  this.updatedAt,
//   });
//
//   int id;
//   int piecesId;
//   int sizeId;
//   int colorId;
//   String image;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   factory PieceDetails.fromJson(Map<String, dynamic> json) => PieceDetails(
//     id: json["id"],
//     piecesId: json["pieces_id"],
//     sizeId: json["size_id"],
//     colorId: json["color_id"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
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
//   };
// }
//
// class Pieces {
//   Pieces({
//     required  this.id,
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
//     required this.gender,
//     required  this.numLiked,
//     required  this.createdAt,
//     required  this.updatedAt,
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
//
//   factory Pieces.fromJson(Map<String, dynamic> json) => Pieces(
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
//   };
// }

// To parse this JSON data, do
//
//     final detailscollections = detailscollectionsFromJson(jsonString);

import 'dart:convert';

List<Detailscollections> detailscollectionsFromJson(String str) => List<Detailscollections>.from(json.decode(str).map((x) => Detailscollections.fromJson(x)));

String detailscollectionsToJson(List<Detailscollections> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Detailscollections {
  Detailscollections({
  required  this.id,
    required this.type,
    required this.collectionId,
    required this.pieceId,
    required  this.pieceDetailsId,
    required  this.collections,
    required  this.pieceDetails,
  });

  int id;
  String type;
  int collectionId;
  int pieceId;
  int pieceDetailsId;
  Collections collections;
  PieceDetails? pieceDetails;

  factory Detailscollections.fromJson(Map<String, dynamic> json) => Detailscollections(
    id: json["id"],
    type: json["type"],
    collectionId: json["collection_id"],
    pieceId: json["piece_id"],
    pieceDetailsId: json["pieceDetails_id"],
    collections: Collections.fromJson(json["collections"]),
    pieceDetails: json["piece_details"] == null ? null : PieceDetails.fromJson(json["piece_details"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "collection_id": collectionId,
    "piece_id": pieceId,
    "pieceDetails_id": pieceDetailsId,
    "collections": collections.toJson(),
    "piece_details": pieceDetails == null ? null : pieceDetails!.toJson(),
  };
}

class Collections {
  Collections({
    required this.id,
    required  this.name,
    required  this.image,
    required  this.companyId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String image;
  int companyId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Collections.fromJson(Map<String, dynamic> json) => Collections(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    companyId: json["company_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "company_id": companyId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class PieceDetails {
  PieceDetails({
    required this.id,
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

  factory PieceDetails.fromJson(Map<String, dynamic> json) => PieceDetails(
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
