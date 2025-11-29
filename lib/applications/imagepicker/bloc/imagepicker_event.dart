part of 'imagepicker_bloc.dart';

@freezed
sealed class ImagepickerEvent with _$ImagepickerEvent {
  const factory ImagepickerEvent.pickimageevent() = PickImageEvent;
  const factory ImagepickerEvent.deletepickimageevent() = DeletePickImageEvent;
}
