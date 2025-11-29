part of 'emp_in_out_bloc.dart';

@freezed
sealed class EmpInOutEvent with _$EmpInOutEvent {
  const factory EmpInOutEvent.employeeCheckinCheckout({
    required EmployeeCheckinCheckoutRequestModel empcheckinout,
  }) = EmployeeCheckinCheckout;
  const factory EmpInOutEvent.selectVehicle({required String vehicle}) =
      SelectVehicleEvent;
  const factory EmpInOutEvent.employeeStatusCheck() = EmployeeStatusCheck;
}
