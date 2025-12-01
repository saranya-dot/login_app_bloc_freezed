class AuthResponseModel {
  final Message message;

  AuthResponseModel({required this.message});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(message: Message.fromJson(json['message']));
  }

  Map<String, dynamic> toJson() {
    return {'message': message.toJson()};
  }
}

class Message {
  final bool success;
  final String messageText;
  final String token;
  final String salesPerson;
  final String dateOfBirth;
  final String department;
  final String designation;

  Message({
    required this.success,
    required this.messageText,
    required this.token,
    required this.salesPerson,
    required this.dateOfBirth,
    required this.department,
    required this.designation,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      success: json['success'],
      messageText: json['message'],
      token: json['token'],
      salesPerson: json['sales_person'],
      dateOfBirth: json['date_of_birth'],
      department: json['department'],
      designation: json['designation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': messageText,
      'sales_person': salesPerson,
      'token': token,
      'date_of_birth': dateOfBirth,
      'department': department,
      'designation': designation,
    };
  }
}
