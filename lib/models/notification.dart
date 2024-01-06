// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'dart:convert';

Notification notificationFromJson(String str) => Notification.fromJson(json.decode(str));

String notificationToJson(Notification data) => json.encode(data.toJson());

class Notification {
  Notification({
  required  this.status,
    required  this.notifications,
    required this.count,
  });

  bool status;
  List<NotificationElement> notifications;
  int count;

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    status: json["status"],
    notifications: List<NotificationElement>.from(json["notifications"].map((x) => NotificationElement.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "notifications": List<dynamic>.from(notifications.map((x) => x.toJson())),
    "count": count,
  };
}

class NotificationElement {
  NotificationElement({
    required  this.id,
    required  this.userId,
    required this.title,
    required this.type,
    required this.senderId,
    required this.details,
    required this.isSeen,
    required  this.createdAt,
    required  this.updatedAt,
    required  this.tableUser,
    required  this.company,
  });

  int id;
  int userId;
  String title;
  String type;
  int senderId;
  String details;
  int isSeen;
  DateTime createdAt;
  DateTime updatedAt;
  TableUser tableUser;
  Company company;

  factory NotificationElement.fromJson(Map<String, dynamic> json) => NotificationElement(
    id: json["id"],
    userId: json["user_id"],
    title: json["title"],
    type: json["type"],
    senderId: json["sender_id"],
    details: json["details"],
    isSeen: json["is_seen"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    tableUser: TableUser.fromJson(json["table_user"]),
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "title": title,
    "type": type,
    "sender_id": senderId,
    "details": details,
    "is_seen": isSeen,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "table_user": tableUser.toJson(),
    "company": company.toJson(),
  };
}

class Company {
  Company({
    required  this.id,
    required this.name,
    required  this.email,
    required this.password,
    required this.dateOfEstablishment,
    required this.location,
    required  this.majorCategory,
    required this.image,
    this.details,
    required  this.numFollowed,
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
  dynamic details;
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
    image: json["image"],
    details: json["details"],
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
    "image": image,
    "details": details,
    "num_followed": numFollowed,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
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
      required  this.details,
    required  this.weight,
    required  this.length,
    required this.preferedColor,
    required this.preferedStyle,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String email;
  String password;
  dynamic dateOfBirth;
  int gender;
  String details;
  int weight;
  int length;
  String preferedColor;
  String preferedStyle;
  String image;
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
