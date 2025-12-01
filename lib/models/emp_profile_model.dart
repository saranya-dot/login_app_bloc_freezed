class EmpProfileModel {
  final String salesPerson;
  final String dateOfBirth;
  final String department;
  final String designation;
  EmpProfileModel({
    required this.salesPerson,
    required this.dateOfBirth,
    required this.department,
    required this.designation,
  });
  factory EmpProfileModel.fromJson(Map<String, dynamic> json) {
    return EmpProfileModel(
      salesPerson: json["sales_person"] ?? "",
      dateOfBirth: json["date_of_birth"] ?? "",
      department: json["department"] ?? "",
      designation: json["designation"] ?? "",
    );
  }
  Map<String, dynamic> tojson() => {
    "sales_person": salesPerson,
    "date_of_birth": dateOfBirth,
    "department": department,
    "designation": designation,
  };
}
