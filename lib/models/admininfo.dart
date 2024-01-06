// To parse this JSON data, do
//
//     final admininfo = admininfoFromJson(jsonString);

import 'dart:convert';

List<Admininfo> admininfoFromJson(String str) => List<Admininfo>.from(json.decode(str).map((x) => Admininfo.fromJson(x)));

String admininfoToJson(List<Admininfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Admininfo {
  Admininfo({
  required  this.id,
  required  this.name,
  required  this.email,
  required  this.password,
    this.image,
  required  this.createdAt,
  required  this.updatedAt,
  });

  int id;
  dynamic name;
  String email;
  String password;
  dynamic image;
  DateTime createdAt;
  DateTime updatedAt;

  factory Admininfo.fromJson(Map<String, dynamic> json) => Admininfo(
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
