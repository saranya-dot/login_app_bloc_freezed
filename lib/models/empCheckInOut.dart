class EmployeeCheckinCheckoutRequestModel {
  String logType;
  String time;
  String image;
  String imageOdo;
  String fileType;
  String odometerValue;
  double? latitude;
  double? longitude;
  String vehicletype;

  EmployeeCheckinCheckoutRequestModel({
    required this.logType,
    required this.time,
    required this.image,
    required this.imageOdo,
    required this.fileType,
    required this.odometerValue,
    this.latitude,
    this.longitude,
    required this.vehicletype,
  });
}
