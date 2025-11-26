part of 'student_bloc.dart';

@freezed
sealed class StudentEvent with _$StudentEvent {
  const factory StudentEvent.createStudent({
    required StudentRequestmodel studentRequestmodel,
  }) = CreateStudent;
  const factory StudentEvent.getStudents() = GetStudent;
  const factory StudentEvent.updateStudent({
    required StudentRequestmodel studentRequestmodel,
  }) = UpdateStudent;
  const factory StudentEvent.deleteStudent({
    required StudentRequestmodel studentRequestmodel,
  }) = DeleteStudent;
}
