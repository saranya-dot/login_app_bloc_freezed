class EmployeeCheckinCheckoutRequestModel {
  String logtype;
  String time;
  String image;
  String imageOdo;
  String fileType;
  String odometerValue;
  double? latitude;
  double? longitude;
  String vehicletype;

  EmployeeCheckinCheckoutRequestModel({
    required this.logtype,
    required this.time,
    required this.image,
    required this.imageOdo,
    required this.fileType,
    required this.odometerValue,
    this.latitude,
    this.longitude,
    required this.vehicletype,
  });

  factory EmployeeCheckinCheckoutRequestModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return EmployeeCheckinCheckoutRequestModel(
      logtype: json['log_type'] ?? '',
      time: json['time'] ?? '',
      image: json['image'] ?? '',
      imageOdo: json['imageOdo'] ?? '',
      fileType: json['fileType'] ?? '',
      odometerValue: json['odometerValue'] ?? '',
      latitude: (json['latitude'] != null) ? json['latitude'].toDouble() : null,
      longitude: (json['longitude'] != null)
          ? json['longitude'].toDouble()
          : null,
      vehicletype: json['vehicletype'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'log_type': logtype,
      'time': time,
      'image': image,
      'imageOdo': imageOdo,
      'fileType': fileType,
      'odometerValue': odometerValue,
      'latitude': latitude,
      'longitude': longitude,
      'vehicletype': vehicletype,
    };
  }
}
