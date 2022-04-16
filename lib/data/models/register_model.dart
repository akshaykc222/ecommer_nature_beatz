import 'package:shop_app/data/models/designation.dart';

class RegisterModel {
  RegisterModel({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.designation,
    required this.address,
    required this.password,
    this.isActive,
  });

  int? id;
  String name;
  String email;
  String phone;
  DesignationModel designation;
  List<dynamic> address;
  String password;
  bool? isActive;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        designation: DesignationModel.fromJson(json["designation"]),
        address: List<dynamic>.from(json["address"].map((x) => x)),
        password: json["password"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "designation": designation.toJson(),
        "address": List<dynamic>.from(address.map((x) => x)),
        "password": password,
        "is_active": isActive ?? false,
      };
}
