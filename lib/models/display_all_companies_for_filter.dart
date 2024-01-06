// To parse this JSON data, do
//
//     final displaycompaniesforfilter = displaycompaniesforfilterFromJson(jsonString);
//
// import 'dart:convert';
//
// Displaycompaniesforfilter displaycompaniesforfilterFromJson(String str) => Displaycompaniesforfilter.fromJson(json.decode(str));
//
// String displaycompaniesforfilterToJson(Displaycompaniesforfilter data) => json.encode(data.toJson());
//
// class Displaycompaniesforfilter {
//   Displaycompaniesforfilter({
//   required  this.currentPage,
//     required  this.dat,
//     required  this.firstPageUrl,
//     required  this.from,
//     required  this.lastPage,
//     required this.lastPageUrl,
//     required  this.nextPageUrl,
//     required  this.path,
//     required  this.perPage,
//     this.prevPageUrl,
//     required  this.to,
//     required  this.total,
//   });
//
//   int currentPage;
//   List<Datm> dat;
//   String firstPageUrl;
//   int from;
//   int lastPage;
//   String lastPageUrl;
//   String nextPageUrl;
//   String path;
//   int perPage;
//   dynamic prevPageUrl;
//   int to;
//   int total;
//
//   factory Displaycompaniesforfilter.fromJson(Map<String, dynamic> json) => Displaycompaniesforfilter(
//     currentPage: json["current_page"],
//     dat: List<Datm>.from(json["data"].map((x) => Datm.fromJson(x))),
//     firstPageUrl: json["first_page_url"],
//     from: json["from"],
//     lastPage: json["last_page"],
//     lastPageUrl: json["last_page_url"],
//     nextPageUrl: json["next_page_url"],
//     path: json["path"],
//     perPage: json["per_page"],
//     prevPageUrl: json["prev_page_url"],
//     to: json["to"],
//     total: json["total"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "current_page": currentPage,
//     "data": List<dynamic>.from(dat.map((x) => x.toJson())),
//     "first_page_url": firstPageUrl,
//     "from": from,
//     "last_page": lastPage,
//     "last_page_url": lastPageUrl,
//     "next_page_url": nextPageUrl,
//     "path": path,
//     "per_page": perPage,
//     "prev_page_url": prevPageUrl,
//     "to": to,
//     "total": total,
//   };
// }
//
// class Datm {
//   Datm({
//     required  this.id,
//     required this.name,
//     required this.email,
//     required  this.password,
//     required this.dateOfEstablishment,
//     required  this.location,
//     required  this.majorCategory,
//     required  this.image,
//     required this.details,
//     required  this.numFollowed,
//     required  this.createdAt,
//     required  this.updatedAt,
//     this.deletedAt,
//   });
//
//   int id;
//   String name;
//   String email;
//   String password;
//   DateTime dateOfEstablishment;
//   Location? location;
//   MajorCategory? majorCategory;
//   Image? image;
//   String details;
//   int numFollowed;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//
//   factory Datm.fromJson(Map<String, dynamic> json) => Datm(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
//     location: locationValues.map[json["location"]],
//     majorCategory: majorCategoryValues.map[json["major_category"]],
//     image: imageValues.map[json["image"]],
//     details: json["details"] == null ? null : json["details"],
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
//     "location": locationValues.reverse[location],
//     "major_category": majorCategoryValues.reverse[majorCategory],
//     "image": imageValues.reverse[image],
//     "details": details == null ? null : details,
//     "num_followed": numFollowed,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt,
//   };
// }
//
// enum Image { THE_1657014773_JPG, THE_1657013085_JPG }
//
// final imageValues = EnumValues({
//   "1657013085.jpg": Image.THE_1657013085_JPG,
//   "1657014773.jpg": Image.THE_1657014773_JPG
// });
//
// enum Location { THE_59_TEGSDFKJ, DAMAS }
//
// final locationValues = EnumValues({
//   "damas": Location.DAMAS,
//   "59tegsdfkj": Location.THE_59_TEGSDFKJ
// });
//
// enum MajorCategory { CLOTHES, CLOTHES2 }
//
// final majorCategoryValues = EnumValues({
//   "clothes": MajorCategory.CLOTHES,
//   "clothes2": MajorCategory.CLOTHES2
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap={};
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }

// To parse this JSON data, do
//
//     final displaycompaniesforfilter = displaycompaniesforfilterFromJson(jsonString);

import 'dart:convert';

List<Displaycompaniesforfilter> displaycompaniesforfilterFromJson(String str) => List<Displaycompaniesforfilter>.from(json.decode(str).map((x) => Displaycompaniesforfilter.fromJson(x)));

String displaycompaniesforfilterToJson(List<Displaycompaniesforfilter> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Displaycompaniesforfilter {
  Displaycompaniesforfilter({
  required  this.id,
    required  this.name,
    required this.email,
    required this.password,
    required this.dateOfEstablishment,
    required this.location,
    this.majorCategory,
    required  this.image,
    required  this.details,
    required  this.numFollowed,
    required  this.createdAt,
  required  this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfEstablishment;
  String location;
  MajorCategory? majorCategory;
  String image;
  String details;
  int numFollowed;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Displaycompaniesforfilter.fromJson(Map<String, dynamic> json) => Displaycompaniesforfilter(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
    location: json["location"],
    majorCategory: majorCategoryValues.map[json["major_category"]],
    image: json["image"] == null ? null : json["image"],
    details: json["details"] == null ? null : json["details"],
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
    "major_category": majorCategoryValues.reverse[majorCategory],
    "image": image == null ? null : image,
    "details": details == null ? null : details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

enum MajorCategory { CLOTHES, CLOTHES2, SHOES }

final majorCategoryValues = EnumValues({
  "clothes": MajorCategory.CLOTHES,
  "clothes2": MajorCategory.CLOTHES2,
  "shoes": MajorCategory.SHOES
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap={};

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
