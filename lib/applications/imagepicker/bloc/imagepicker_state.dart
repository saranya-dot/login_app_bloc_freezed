part of 'imagepicker_bloc.dart';

@freezed
sealed class ImagepickerState with _$ImagepickerState {
  factory ImagepickerState({
    required String? imagePath,
    required bool isImagepick,
    required bool isUploading,
    required bool isLoading,
    required bool isError,
    required String? fileType,
  }) = _ImagepickerState;
  factory ImagepickerState.initial() {
    return ImagepickerState(
      imagePath: '',
      isImagepick: false,
      isUploading: false,
      isLoading: false,
      isError: false,
      fileType: '',
    );
  }
}
