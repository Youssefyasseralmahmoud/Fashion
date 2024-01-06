// To parse this JSON data, do
//
//     final companies = companiesFromJson(jsonString);

import 'dart:convert';

List<Companies> companiesFromJson(String str) => List<Companies>.from(json.decode(str).map((x) => Companies.fromJson(x)));

String companiesToJson(List<Companies> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Companies {
  Companies({
  required  this.id,
  required  this.name,
  required  this.email,
  required  this.password,
  required  this.dateOfEstablishment,
  required  this.location,
  required  this.majorCategory,
  required  this.image,
  required  this.details,
  required  this.numFollowed,
  required  this.createdAt,
  required  this.updatedAt,
  required  this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfEstablishment;
  Location? location;
  MajorCategory? majorCategory;
  String image;
  String details;
  int numFollowed;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Companies.fromJson(Map<String, dynamic> json) => Companies(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
    location: locationValues.map[json["location"]],
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
    "location": locationValues.reverse[location],
    "major_category": majorCategoryValues.reverse[majorCategory],
    "image": image == null ? null : image,
    "details": details == null ? null : details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

enum Location { THE_59_TEGSDFKJ, DAMAS, DAMASCUS }

final locationValues = EnumValues({
  "damas": Location.DAMAS,
  "damascus": Location.DAMASCUS,
  "59tegsdfkj": Location.THE_59_TEGSDFKJ
});

enum MajorCategory { CLOTHES, CLOTHES2 }

final majorCategoryValues = EnumValues({
  "clothes": MajorCategory.CLOTHES,
  "clothes2": MajorCategory.CLOTHES2
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
