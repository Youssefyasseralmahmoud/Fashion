// To parse this JSON data, do
//
//     final displayuserprofile = displayuserprofileFromJson(jsonString);

import 'dart:convert';

Displayuserprofile displayuserprofileFromJson(String str) => Displayuserprofile.fromJson(json.decode(str));

String displayuserprofileToJson(Displayuserprofile data) => json.encode(data.toJson());

class Displayuserprofile {
  Displayuserprofile({
  required  this.id,
   required this.name,
    required   this.email,
    required  this.password,
    this.dateOfBirth,
    required  this.gender,
    this.details,
    this.weight,
    this.length,
    this.preferedColor,
    this.preferedStyle,
    this.image,
    required   this.createdAt,
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

  factory Displayuserprofile.fromJson(Map<String, dynamic> json) => Displayuserprofile(
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
