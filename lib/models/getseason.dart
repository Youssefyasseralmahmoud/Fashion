// To parse this JSON data, do
//
//     final getseason = getseasonFromJson(jsonString);

import 'dart:convert';

List<Getseason> getseasonFromJson(String str) => List<Getseason>.from(json.decode(str).map((x) => Getseason.fromJson(x)));

String getseasonToJson(List<Getseason> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Getseason {
  Getseason({
  required  this.id,
    required  this.name,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;

  factory Getseason.fromJson(Map<String, dynamic> json) => Getseason(
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
