import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'imagepicker_event.dart';
part 'imagepicker_state.dart';
part 'imagepicker_bloc.freezed.dart';

class ImagepickerBloc extends Bloc<ImagepickerEvent, ImagepickerState> {
  final ImagePicker picker = ImagePicker();
  ImagepickerBloc() : super(ImagepickerState.initial()) {
    on<PickImageEvent>((event, emit) async {
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
          final compressedBytes = await FlutterImageCompress.compressWithFile(
            imageFile.path,
            quality: 40,
            minWidth: 800,
            minHeight: 800,
          );
          if (compressedBytes == null) {
            emit(state.copyWith(isError: true));
            return;
          }

          // final bytes = await imageFile.readAsBytes();

          selectedImageBytes = base64Encode(compressedBytes);
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
    on<DeletePickImageEvent>((event, emit) async {
      emit(
        state.copyWith(imagePath: null, isImagepick: false, isLoading: false),
      );
    });
  }
}
