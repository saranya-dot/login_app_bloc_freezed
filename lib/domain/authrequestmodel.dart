class AuthRequestModel {
  final String username;
  final String password;
  AuthRequestModel({required this.username, required this.password});
  factory AuthRequestModel.fromJson(Map<String, dynamic> json) {
    return AuthRequestModel(
      username: json['username'],
      password: json['password'],
    );
  }
  Map<String, dynamic> toMap() => {'username': username, 'password': password};
}
