class EmployeeStatusResponse {
  final MessageData message;

  EmployeeStatusResponse({required this.message});

  factory EmployeeStatusResponse.fromJson(Map<String, dynamic> json) {
    return EmployeeStatusResponse(
      message: MessageData.fromJson(json['message']),
    );
  }
}

class MessageData {
  final bool success;
  final StatusMessage message;

  MessageData({required this.success, required this.message});

  factory MessageData.fromJson(Map<String, dynamic> json) {
    return MessageData(
      success: json['success'],
      message: StatusMessage.fromJson(json['message']),
    );
  }
}

class StatusMessage {
  final String checkInTime;
  final String checkOutTime;
  final String currentStatus;
  final String vehicleType;

  StatusMessage({
    required this.checkInTime,
    required this.checkOutTime,
    required this.currentStatus,
    required this.vehicleType,
  });

  factory StatusMessage.fromJson(Map<String, dynamic> json) {
    return StatusMessage(
      checkInTime: json['check_in_time'],
      checkOutTime: json['check_out_time'],
      currentStatus: json['current_status'],
      vehicleType: json['vehicle_type'],
    );
  }
}
