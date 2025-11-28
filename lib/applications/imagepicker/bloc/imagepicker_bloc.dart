import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'imagepicker_event.dart';
part 'imagepicker_state.dart';
part 'imagepicker_bloc.freezed.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  final ImagePicker picker = ImagePicker();
  ImagepickerBloc() : super(ImagepickerState.initial()) {
    on<Pickimageevent>((event, emit) async {
      emit(
        state.copyWith(isUploading: false, isImagepick: false, isLoading: true),
      );
      // image picker implementation
      try {
        final String selectedImageBytes;
        final XFile? picked = await picker.pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.rear,
        );
        final ext = picked!.path.split('.').last;
        print("File Extension = $ext");

        if (picked != null) {
          File imageFile = File(picked.path);

          final bytes = await imageFile.readAsBytes();

          selectedImageBytes = base64Encode(bytes);
          emit(
            state.copyWith(
              imagePath: selectedImageBytes,
              isImagepick: true,
              isLoading: false,
              fileType: ext,
            ),
          );
        }
      } catch (e) {
        log("Error picking image: $e");
        emit(state.copyWith(isError: true));
      }
    });
  }
}
