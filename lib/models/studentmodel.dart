class StudentRequestmodel {
  final String id;
  final String name;
  final String age;
  final String phonenumber;
  final String emailid;
  StudentRequestmodel({
    required this.id,
    required this.name,
    required this.age,
    required this.phonenumber,
    required this.emailid,
  });
  factory StudentRequestmodel.fromJson(Map<String, dynamic> json) {
    return StudentRequestmodel(
      id: 'id',
      name: 'name',
      age: 'age',
      phonenumber: 'phonenumber',
      emailid: 'emailid',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'phonenumber': phonenumber,
      'emailid': emailid,
    };
  }
}
