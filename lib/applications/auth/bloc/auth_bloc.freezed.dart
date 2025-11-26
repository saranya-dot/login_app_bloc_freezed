// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {

 AuthRequestModel get authrequestmodel;
/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEventCopyWith<AuthEvent> get copyWith => _$AuthEventCopyWithImpl<AuthEvent>(this as AuthEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent&&(identical(other.authrequestmodel, authrequestmodel) || other.authrequestmodel == authrequestmodel));
}


@override
int get hashCode => Object.hash(runtimeType,authrequestmodel);

@override
String toString() {
  return 'AuthEvent(authrequestmodel: $authrequestmodel)';
}


}

/// @nodoc
abstract mixin class $AuthEventCopyWith<$Res>  {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) _then) = _$AuthEventCopyWithImpl;
@useResult
$Res call({
 AuthRequestModel authrequestmodel
});




}
/// @nodoc
class _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._self, this._then);

  final AuthEvent _self;
  final $Res Function(AuthEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authrequestmodel = null,}) {
  return _then(_self.copyWith(
authrequestmodel: null == authrequestmodel ? _self.authrequestmodel : authrequestmodel // ignore: cast_nullable_to_non_nullable
as AuthRequestModel,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LogIn value)?  logIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LogIn value)  logIn,}){
final _that = this;
switch (_that) {
case LogIn():
return logIn(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LogIn value)?  logIn,}){
final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthRequestModel authrequestmodel)?  logIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that.authrequestmodel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthRequestModel authrequestmodel)  logIn,}) {final _that = this;
switch (_that) {
case LogIn():
return logIn(_that.authrequestmodel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthRequestModel authrequestmodel)?  logIn,}) {final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that.authrequestmodel);case _:
  return null;

}
}

}

/// @nodoc


class LogIn implements AuthEvent {
  const LogIn({required this.authrequestmodel});
  

@override final  AuthRequestModel authrequestmodel;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogInCopyWith<LogIn> get copyWith => _$LogInCopyWithImpl<LogIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogIn&&(identical(other.authrequestmodel, authrequestmodel) || other.authrequestmodel == authrequestmodel));
}


@override
int get hashCode => Object.hash(runtimeType,authrequestmodel);

@override
String toString() {
  return 'AuthEvent.logIn(authrequestmodel: $authrequestmodel)';
}


}

/// @nodoc
abstract mixin class $LogInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LogInCopyWith(LogIn value, $Res Function(LogIn) _then) = _$LogInCopyWithImpl;
@override @useResult
$Res call({
 AuthRequestModel authrequestmodel
});




}
/// @nodoc
class _$LogInCopyWithImpl<$Res>
    implements $LogInCopyWith<$Res> {
  _$LogInCopyWithImpl(this._self, this._then);

  final LogIn _self;
  final $Res Function(LogIn) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authrequestmodel = null,}) {
  return _then(LogIn(
authrequestmodel: null == authrequestmodel ? _self.authrequestmodel : authrequestmodel // ignore: cast_nullable_to_non_nullable
as AuthRequestModel,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 bool get isLoading; bool get isError; bool get isSuccess; String get successMessage; bool get isSalesPerson;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isSalesPerson, isSalesPerson) || other.isSalesPerson == isSalesPerson));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,successMessage,isSalesPerson);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, successMessage: $successMessage, isSalesPerson: $isSalesPerson)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, String successMessage, bool isSalesPerson
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? successMessage = null,Object? isSalesPerson = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isSalesPerson: null == isSalesPerson ? _self.isSalesPerson : isSalesPerson // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isSalesPerson)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isSalesPerson);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isSalesPerson)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isSalesPerson);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isSalesPerson)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isSalesPerson);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
   _AuthState({required this.isLoading, required this.isError, required this.isSuccess, required this.successMessage, required this.isSalesPerson});
  

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isSuccess;
@override final  String successMessage;
@override final  bool isSalesPerson;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isSalesPerson, isSalesPerson) || other.isSalesPerson == isSalesPerson));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,successMessage,isSalesPerson);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, successMessage: $successMessage, isSalesPerson: $isSalesPerson)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, String successMessage, bool isSalesPerson
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? successMessage = null,Object? isSalesPerson = null,}) {
  return _then(_AuthState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isSalesPerson: null == isSalesPerson ? _self.isSalesPerson : isSalesPerson // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
