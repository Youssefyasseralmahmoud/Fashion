// // To parse this JSON data, do
// //
// //     final allnews2 = allnews2FromJson(jsonString);
//
// import 'dart:convert';
//
// Allnews2 allnews2FromJson(String str) => Allnews2.fromJson(json.decode(str));
//
// String allnews2ToJson(Allnews2 data) => json.encode(data.toJson());
//
// class Allnews2 {
//   Allnews2({
//    required this.currentPage,
//    required this.data,
//    required this.firstPageUrl,
//    required this.from,
//    required this.lastPage,
//    required this.lastPageUrl,
//    required this.nextPageUrl,
//    required this.path,
//    required this.perPage,
//    required this.prevPageUrl,
//    required this.to,
//    required this.total,
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
//   factory Allnews2.fromJson(Map<String, dynamic> json) => Allnews2(
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
//    required this.id,
//    required this.adminId,
//    required this.companyId,
//    required this.expertId,
//    required this.type,
//    required this.title,
//    required this.details,
//    required this.image,
//    required this.createdAt,
//    required this.updatedAt,
//    required this.admin,
//    required this.expert,
//    required this.company,
//   });
//
//   int id;
//   int adminId;
//   int companyId;
//   int expertId;
//   String type;
//   String title;
//   String details;
//   String image;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Admin? admin;
//   dynamic expert;
//   Company? company;
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["id"],
//     adminId: json["admin_id"],
//     companyId: json["company_id"],
//     expertId: json["expert_id"],
//     type: json["type"],
//     title: json["title"],
//     details: json["details"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//     admin: json["admin"] == null ? null : Admin.fromJson(json["admin"]),
//     expert: json["expert"],
//     company: json["company"] == null ? null : Company.fromJson(json["company"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "admin_id": adminId,
//     "company_id": companyId,
//     "expert_id": expertId,
//     "type": type,
//     "title": title,
//     "details": details,
//     "image": image,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "admin": admin == null ? null : admin!.toJson(),
//     "expert": expert,
//     "company": company == null ? null : company!.toJson(),
//   };
// }
//
// class Admin {
//   Admin({
//    required this.id,
//   required  this.name,
//   required  this.email,
//   required  this.password,
//   required  this.image,
//   required  this.createdAt,
//   required  this.updatedAt,
//   });
//
//   int id;
//   dynamic name;
//   String email;
//   String password;
//   dynamic image;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   factory Admin.fromJson(Map<String, dynamic> json) => Admin(
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     password: json["password"],
//     image: json["image"],
//     createdAt: DateTime.parse(json["created_at"]),
//     updatedAt: DateTime.parse(json["updated_at"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "email": email,
//     "password": password,
//     "image": image,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//   };
// }
//
// class Company {
//   Company({
//    required this.id,
//    required this.name,
//    required this.email,
//    required this.password,
//    required this.dateOfEstablishment,
//    required this.location,
//    required this.majorCategory,
//    required this.image,
//    required this.details,
//    required this.numFollowed,
//    required this.createdAt,
//    required this.updatedAt,
//     this.deletedAt,
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
//   String details;
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
//     "location": location,
//     "major_category": majorCategory,
//     "image": image,
//     "details": details == null ? null : details,
//     "num_followed": numFollowed,
//     "created_at": createdAt.toIso8601String(),
//     "updated_at": updatedAt.toIso8601String(),
//     "deleted_at": deletedAt,
//   };
// }
// To parse this JSON data, do
//
//     final allnews = allnewsFromJson(jsonString);

import 'dart:convert';

List<Allnews2> allnews2FromJson(String str) => List<Allnews2>.from(json.decode(str).map((x) => Allnews2.fromJson(x)));

String allnews2ToJson(List<Allnews2> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Allnews2 {
  Allnews2({
  required  this.id,
    required this.adminId,
    required  this.companyId,
    required  this.expertId,
    required this.type,
    required this.details,
    required this.image,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.admin,
    required this.expert,
    required this.company,
  });

  int id;
  int adminId;
  int companyId;
  int expertId;
  String type;
  String details;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  Admin? admin;
  Expert? expert;
  Company? company;

  factory Allnews2.fromJson(Map<String, dynamic> json) => Allnews2(
    id: json["id"],
    adminId: json["admin_id"],
    companyId: json["company_id"],
    expertId: json["expert_id"],
    type:  json["type"],
    details: json["details"],
    image: json["image"] == null ? null : json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    admin: json["admin"] == null ? null : Admin.fromJson(json["admin"]),
    expert: json["expert"] == null ? null : Expert.fromJson(json["expert"]),
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "admin_id": adminId,
    "company_id": companyId,
    "expert_id": expertId,
    "type": typeValues.reverse[type],
    "details": details,
    "image": image == null ? null : image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "admin": admin == null ? null : admin!.toJson(),
    "expert": expert == null ? null : expert!.toJson(),
    "company": company == null ? null : company!.toJson(),
  };
}

class Admin {
  Admin({
    required  this.id,
    this.name,
    required  this.email,
    required  this.password,
    this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  dynamic name;
  String email;
  String password;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
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
    required this.majorCategory,
    required  this.image,
    required  this.details,
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
    location: json["location"],
    majorCategory: json["major_category"],
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
    "major_category": majorCategory,
    "image": image == null ? null : image,
    "details": details == null ? null : details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class Expert {
  Expert({
    required  this.id,
    required   this.name,
    required  this.email,
    required  this.password,
    required  this.dateOfBirth,
    required  this.gender,
    required this.details,
    required  this.image,
    required this.createdAt,
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
    details: json["details"],
    image: json["image"],
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
    "details": details,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

enum Type { COMPANY, ADMIN, EXPERT }

final typeValues = EnumValues({
  "admin": Type.ADMIN,
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
