// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'imagepicker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImagepickerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagepickerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImagepickerEvent()';
}


}

/// @nodoc
class $ImagepickerEventCopyWith<$Res>  {
$ImagepickerEventCopyWith(ImagepickerEvent _, $Res Function(ImagepickerEvent) __);
}


/// Adds pattern-matching-related methods to [ImagepickerEvent].
extension ImagepickerEventPatterns on ImagepickerEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Pickimageevent value)?  pickimageevent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Pickimageevent() when pickimageevent != null:
return pickimageevent(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Pickimageevent value)  pickimageevent,}){
final _that = this;
switch (_that) {
case Pickimageevent():
return pickimageevent(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Pickimageevent value)?  pickimageevent,}){
final _that = this;
switch (_that) {
case Pickimageevent() when pickimageevent != null:
return pickimageevent(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  pickimageevent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Pickimageevent() when pickimageevent != null:
return pickimageevent();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  pickimageevent,}) {final _that = this;
switch (_that) {
case Pickimageevent():
return pickimageevent();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  pickimageevent,}) {final _that = this;
switch (_that) {
case Pickimageevent() when pickimageevent != null:
return pickimageevent();case _:
  return null;

}
}

}

/// @nodoc


class Pickimageevent implements ImagepickerEvent {
  const Pickimageevent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pickimageevent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImagepickerEvent.pickimageevent()';
}


}




/// @nodoc
mixin _$ImagepickerState {

 String? get imagePath; bool get isImagepick; bool get isUploading; bool get isLoading; bool get isError; String? get fileType;
/// Create a copy of ImagepickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImagepickerStateCopyWith<ImagepickerState> get copyWith => _$ImagepickerStateCopyWithImpl<ImagepickerState>(this as ImagepickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImagepickerState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isImagepick, isImagepick) || other.isImagepick == isImagepick)&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,isImagepick,isUploading,isLoading,isError,fileType);

@override
String toString() {
  return 'ImagepickerState(imagePath: $imagePath, isImagepick: $isImagepick, isUploading: $isUploading, isLoading: $isLoading, isError: $isError, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class $ImagepickerStateCopyWith<$Res>  {
  factory $ImagepickerStateCopyWith(ImagepickerState value, $Res Function(ImagepickerState) _then) = _$ImagepickerStateCopyWithImpl;
@useResult
$Res call({
 String? imagePath, bool isImagepick, bool isUploading, bool isLoading, bool isError, String? fileType
});




}
/// @nodoc
class _$ImagepickerStateCopyWithImpl<$Res>
    implements $ImagepickerStateCopyWith<$Res> {
  _$ImagepickerStateCopyWithImpl(this._self, this._then);

  final ImagepickerState _self;
  final $Res Function(ImagepickerState) _then;

/// Create a copy of ImagepickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imagePath = freezed,Object? isImagepick = null,Object? isUploading = null,Object? isLoading = null,Object? isError = null,Object? fileType = freezed,}) {
  return _then(_self.copyWith(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isImagepick: null == isImagepick ? _self.isImagepick : isImagepick // ignore: cast_nullable_to_non_nullable
as bool,isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImagepickerState].
extension ImagepickerStatePatterns on ImagepickerState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImagepickerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImagepickerState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImagepickerState value)  $default,){
final _that = this;
switch (_that) {
case _ImagepickerState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImagepickerState value)?  $default,){
final _that = this;
switch (_that) {
case _ImagepickerState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? imagePath,  bool isImagepick,  bool isUploading,  bool isLoading,  bool isError,  String? fileType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImagepickerState() when $default != null:
return $default(_that.imagePath,_that.isImagepick,_that.isUploading,_that.isLoading,_that.isError,_that.fileType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? imagePath,  bool isImagepick,  bool isUploading,  bool isLoading,  bool isError,  String? fileType)  $default,) {final _that = this;
switch (_that) {
case _ImagepickerState():
return $default(_that.imagePath,_that.isImagepick,_that.isUploading,_that.isLoading,_that.isError,_that.fileType);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? imagePath,  bool isImagepick,  bool isUploading,  bool isLoading,  bool isError,  String? fileType)?  $default,) {final _that = this;
switch (_that) {
case _ImagepickerState() when $default != null:
return $default(_that.imagePath,_that.isImagepick,_that.isUploading,_that.isLoading,_that.isError,_that.fileType);case _:
  return null;

}
}

}

/// @nodoc


class _ImagepickerState implements ImagepickerState {
   _ImagepickerState({required this.imagePath, required this.isImagepick, required this.isUploading, required this.isLoading, required this.isError, required this.fileType});
  

@override final  String? imagePath;
@override final  bool isImagepick;
@override final  bool isUploading;
@override final  bool isLoading;
@override final  bool isError;
@override final  String? fileType;

/// Create a copy of ImagepickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagepickerStateCopyWith<_ImagepickerState> get copyWith => __$ImagepickerStateCopyWithImpl<_ImagepickerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagepickerState&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.isImagepick, isImagepick) || other.isImagepick == isImagepick)&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.fileType, fileType) || other.fileType == fileType));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,isImagepick,isUploading,isLoading,isError,fileType);

@override
String toString() {
  return 'ImagepickerState(imagePath: $imagePath, isImagepick: $isImagepick, isUploading: $isUploading, isLoading: $isLoading, isError: $isError, fileType: $fileType)';
}


}

/// @nodoc
abstract mixin class _$ImagepickerStateCopyWith<$Res> implements $ImagepickerStateCopyWith<$Res> {
  factory _$ImagepickerStateCopyWith(_ImagepickerState value, $Res Function(_ImagepickerState) _then) = __$ImagepickerStateCopyWithImpl;
@override @useResult
$Res call({
 String? imagePath, bool isImagepick, bool isUploading, bool isLoading, bool isError, String? fileType
});




}
/// @nodoc
class __$ImagepickerStateCopyWithImpl<$Res>
    implements _$ImagepickerStateCopyWith<$Res> {
  __$ImagepickerStateCopyWithImpl(this._self, this._then);

  final _ImagepickerState _self;
  final $Res Function(_ImagepickerState) _then;

/// Create a copy of ImagepickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? isImagepick = null,Object? isUploading = null,Object? isLoading = null,Object? isError = null,Object? fileType = freezed,}) {
  return _then(_ImagepickerState(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,isImagepick: null == isImagepick ? _self.isImagepick : isImagepick // ignore: cast_nullable_to_non_nullable
as bool,isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,fileType: freezed == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
