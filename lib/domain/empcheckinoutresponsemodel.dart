class EmployeeCheckinCheckoutResponse {
  final bool success;
  final String message;
  final String logTime;

  EmployeeCheckinCheckoutResponse({
    required this.success,
    required this.message,
    required this.logTime,
  });

  factory EmployeeCheckinCheckoutResponse.fromJson(Map<String, dynamic> json) {
    final msg = json['message'] ?? {};
    return EmployeeCheckinCheckoutResponse(
      success: msg['success'] ?? false,
      message: msg['message'] ?? "",
      logTime: msg['log_time'] ?? "",
    );
  }
}
