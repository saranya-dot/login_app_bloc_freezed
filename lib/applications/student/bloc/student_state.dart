part of 'student_bloc.dart';

@freezed
sealed class StudentState with _$StudentState {
  factory StudentState({
    required bool isLoading,
    required bool isError,
    required bool isSuccess,
    List<StudentRequestmodel>? studentRequestmodel,
    required String successMessage,
  }) = _StudentState;

  factory StudentState.initial() {
    return StudentState(
      isLoading: false,
      isError: false,
      isSuccess: false,
      successMessage: '',
    );
  }
}
