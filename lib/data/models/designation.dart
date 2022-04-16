class DesignationModel {
  DesignationModel({
    required this.id,
    required this.designation,
  });

  int id;
  String designation;

  factory DesignationModel.fromJson(Map<String, dynamic> json) =>
      DesignationModel(
        id: json["id"],
        designation: json["designation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "designation": designation,
      };
}
