// // To parse this JSON data, do
// //
// //     final allpieces = allpiecesFromJson(jsonString);
//
// import 'dart:convert';
//
// Allpieces allpiecesFromJson(String str) => Allpieces.fromJson(json.decode(str));
//
// String allpiecesToJson(Allpieces data) => json.encode(data.toJson());
//
// class Allpieces {
//   Allpieces({
//   required  this.currentPage,
//   required  this.data,
//   required  this.firstPageUrl,
//   required  this.from,
//   required  this.lastPage,
//   required  this.lastPageUrl,
//   required this.nextPageUrl,
//    required this.path,
//   required  this.perPage,
//     this.prevPageUrl,
//  required   this.to,
//   required  this.total,
//   });
//
//   int currentPage;
//   List<Datum> data;
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
//   factory Allpieces.fromJson(Map<String, dynamic> json) => Allpieces(
//     currentPage: json["current_page"],
//     data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
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
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
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
// class Datum {
//   Datum({
//   required  this.id,
//     required this.companyId,
//     required this.expertId,
//     required   this.type,
//     required  this.subCategoryId,
//     required  this.masterCategoryId,
//     required this.seasonId,
//     required this.usageId,
//     required  this.name,
//     required  this.image,
//     this.price,
//     required this.gender,
//     required  this.numLiked,
//     required  this.createdAt,
//     required  this.updatedAt,
//     required this.like,
//     required this.usage,
//     required  this.season,
//     required this.subCategory,
//     required  this.masterCategory,
//     required this.company,
//     this.expert,
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
//   List<dynamic> like;
//   MasterCategory usage;
//   MasterCategory season;
//   MasterCategory subCategory;
//   MasterCategory masterCategory;
//   Company company;
//   dynamic expert;
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
//     like: List<dynamic>.from(json["like"].map((x) => x)),
//     usage: MasterCategory.fromJson(json["usage"]),
//     season: MasterCategory.fromJson(json["season"]),
//     subCategory: MasterCategory.fromJson(json["sub_category"]),
//     masterCategory: MasterCategory.fromJson(json["master_category"]),
//     company: Company.fromJson(json["company"]),
//     expert: json["expert"],
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
//     "like": List<dynamic>.from(like.map((x) => x)),
//     "usage": usage.toJson(),
//     "season": season.toJson(),
//     "sub_category": subCategory.toJson(),
//     "master_category": masterCategory.toJson(),
//     "company": company.toJson(),
//     "expert": expert,
//   };
// }
//
// class Company {
//   Company({
//     required  this.id,
//     required  this.name,
//     required  this.email,
//     required  this.password,
//     required  this.dateOfEstablishment,
//     required  this.location,
//     required this.majorCategory,
//     required this.image,
//     required  this.details,
//     required  this.numFollowed,
//     required  this.createdAt,
//     required this.updatedAt,
//     required  this.deletedAt,
//   });
//
//   int id;
//   String name;
//   String email;
//   String password;
//   DateTime dateOfEstablishment;
//   String location;
//   String majorCategory;
//   String image;
//   dynamic details;
//   int numFollowed;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//
//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     dateOfEstablishment: DateTime.parse(json["date_of_establishment"]),
//     location: json["location"],
//     majorCategory: json["major_category"],
//     image: json["image"],
//     details: json["details"],
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
//     "location": location,
//     "major_category": majorCategory,
//     "image": image,
//     "details": details,
//     "num_followed": numFollowed,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt,
//   };
// }
//
// class MasterCategory {
//   MasterCategory({
//     required this.id,
//     required  this.name,
//     required this.createdAt,
//     this.updatedAt,
//     required  this.masterCategoryId,
//   });
//
//   int id;
//   Name? name;
//   dynamic createdAt;
//   dynamic updatedAt;
//   int masterCategoryId;
//
//   factory MasterCategory.fromJson(Map<String, dynamic> json) => MasterCategory(
//     id: json["id"],
//     name: nameValues.map[json["name"]],
//     createdAt: json["created_at"],
//     updatedAt: json["updated_at"],
//     masterCategoryId: json["master_category_id"] == null ? null : json["master_category_id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": nameValues.reverse[name],
//     "created_at": createdAt,
//     "updated_at": updatedAt,
//     "master_category_id": masterCategoryId == null ? null : masterCategoryId,
//   };
// }
//
// enum Name { FOOTWEAR, AUTUMN, JEANS, FORMAL }
//
// final nameValues = EnumValues({
//   "autumn": Name.AUTUMN,
//   "Footwear": Name.FOOTWEAR,
//   "Formal": Name.FORMAL,
//   "Jeans": Name.JEANS
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
//     final allpieces = allpiecesFromJson(jsonString);

import 'dart:convert';

List<Allpieces> allpiecesFromJson(String str) => List<Allpieces>.from(json.decode(str).map((x) => Allpieces.fromJson(x)));

String allpiecesToJson(List<Allpieces> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Allpieces {
  Allpieces({
  required  this.id,
    required  this.companyId,
    required  this.expertId,
    required  this.type,
    required  this.subCategoryId,
    required  this.masterCategoryId,
    required  this.seasonId,
    required  this.usageId,
    required  this.name,
    required  this.image,
    required  this.price,
    required  this.gender,
    required  this.numLiked,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.like,
    required  this.usage,
    required  this.season,
    required  this.subCategory,
    required  this.masterCategory,
    required this.company,
    required  this.expert,
  });

  int id;
  int companyId;
  int expertId;
  Type? type;
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
  Company? company;
  Expert? expert;

  factory Allpieces.fromJson(Map<String, dynamic> json) => Allpieces(
    id: json["id"],
    companyId: json["company_id"],
    expertId: json["expert_id"],
    type: typeValues.map[json["type"]],
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
    like: List<Like>.from(json["like"].map((x) => Like.fromJson(x))),
    usage: MasterCategory.fromJson(json["usage"]),
    season: MasterCategory.fromJson(json["season"]),
    subCategory: MasterCategory.fromJson(json["sub_category"]),
    masterCategory: MasterCategory.fromJson(json["master_category"]),
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
    expert: json["expert"] == null ? null : Expert.fromJson(json["expert"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_id": companyId,
    "expert_id": expertId,
    "type": typeValues.reverse[type],
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
    "like": List<dynamic>.from(like.map((x) => x.toJson())),
    "usage": usage.toJson(),
    "season": season.toJson(),
    "sub_category": subCategory.toJson(),
    "master_category": masterCategory.toJson(),
    "company": company == null ? null : company!.toJson(),
    "expert": expert == null ? null : expert!.toJson(),
  };
}

class Company {
  Company({
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
    required   this.updatedAt,
    this.deletedAt,
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

  factory Company.fromJson(Map<String, dynamic> json) => Company(
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

class Expert {
  Expert({
    required  this.id,
    required  this.name,
    required this.email,
    required  this.password,
    required  this.dateOfBirth,
    required  this.gender,
    required  this.details,
    required  this.image,
    required  this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String email;
  String password;
  DateTime dateOfBirth;
  int gender;
  String details;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Expert.fromJson(Map<String, dynamic> json) => Expert(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    gender: json["gender"],
    details: json["details"] == null ? null : json["details"],
    image: json["image"] == null ? null : json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "gender": gender,
    "details": details == null ? null : details,
    "image": image == null ? null : image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class Like {
  Like({
    required  this.id,
    required  this.piecesId,
    required  this.userId,
    required this.createdAt,
    required  this.updatedAt,
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

enum Type { EXPERT, COMPANY }

final typeValues = EnumValues({
  "company": Type.COMPANY,
  "expert": Type.EXPERT
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
