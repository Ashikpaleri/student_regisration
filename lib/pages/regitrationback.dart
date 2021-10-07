
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.registration,
  });

  Registration registration;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    registration: Registration.fromJson(json["registration"]),
  );

  Map<String, dynamic> toJson() => {
    "registration": registration.toJson(),
  };
}

class Registration {
  Registration({
    required this.id,
    required this.student,
    required this.subject,
  });

  int id;
  int student;
  int subject;

  factory Registration.fromJson(Map<String, dynamic> json) => Registration(
    id: json["id"],
    student: json["student"],
    subject: json["subject"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "student": student,
    "subject": subject,
  };
}
