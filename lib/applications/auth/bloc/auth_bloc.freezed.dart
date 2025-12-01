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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LogIn value)?  logIn,TResult Function( SessionCheck value)?  sessionCheck,TResult Function( LogOut value)?  logOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that);case SessionCheck() when sessionCheck != null:
return sessionCheck(_that);case LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LogIn value)  logIn,required TResult Function( SessionCheck value)  sessionCheck,required TResult Function( LogOut value)  logOut,}){
final _that = this;
switch (_that) {
case LogIn():
return logIn(_that);case SessionCheck():
return sessionCheck(_that);case LogOut():
return logOut(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LogIn value)?  logIn,TResult? Function( SessionCheck value)?  sessionCheck,TResult? Function( LogOut value)?  logOut,}){
final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that);case SessionCheck() when sessionCheck != null:
return sessionCheck(_that);case LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AuthRequestModel authrequestmodel)?  logIn,TResult Function()?  sessionCheck,TResult Function()?  logOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that.authrequestmodel);case SessionCheck() when sessionCheck != null:
return sessionCheck();case LogOut() when logOut != null:
return logOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AuthRequestModel authrequestmodel)  logIn,required TResult Function()  sessionCheck,required TResult Function()  logOut,}) {final _that = this;
switch (_that) {
case LogIn():
return logIn(_that.authrequestmodel);case SessionCheck():
return sessionCheck();case LogOut():
return logOut();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AuthRequestModel authrequestmodel)?  logIn,TResult? Function()?  sessionCheck,TResult? Function()?  logOut,}) {final _that = this;
switch (_that) {
case LogIn() when logIn != null:
return logIn(_that.authrequestmodel);case SessionCheck() when sessionCheck != null:
return sessionCheck();case LogOut() when logOut != null:
return logOut();case _:
  return null;

}
}

}

/// @nodoc


class LogIn implements AuthEvent {
  const LogIn({required this.authrequestmodel});
  

 final  AuthRequestModel authrequestmodel;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? authrequestmodel = null,}) {
  return _then(LogIn(
authrequestmodel: null == authrequestmodel ? _self.authrequestmodel : authrequestmodel // ignore: cast_nullable_to_non_nullable
as AuthRequestModel,
  ));
}


}

/// @nodoc


class SessionCheck implements AuthEvent {
   SessionCheck();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionCheck);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.sessionCheck()';
}


}




/// @nodoc


class LogOut implements AuthEvent {
   LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logOut()';
}


}




/// @nodoc
mixin _$AuthState {

 bool get isLoading; bool get isError; bool get isSuccess; String get successMessage; bool get isLoggedin; AuthResponseModel? get authresponsemodel; EmployeeStatusResponse? get employeestatusresponse;// dont use this here ,change later
 bool? get isLoggedout;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isLoggedin, isLoggedin) || other.isLoggedin == isLoggedin)&&(identical(other.authresponsemodel, authresponsemodel) || other.authresponsemodel == authresponsemodel)&&(identical(other.employeestatusresponse, employeestatusresponse) || other.employeestatusresponse == employeestatusresponse)&&(identical(other.isLoggedout, isLoggedout) || other.isLoggedout == isLoggedout));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,successMessage,isLoggedin,authresponsemodel,employeestatusresponse,isLoggedout);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, successMessage: $successMessage, isLoggedin: $isLoggedin, authresponsemodel: $authresponsemodel, employeestatusresponse: $employeestatusresponse, isLoggedout: $isLoggedout)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, String successMessage, bool isLoggedin, AuthResponseModel? authresponsemodel, EmployeeStatusResponse? employeestatusresponse, bool? isLoggedout
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
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? successMessage = null,Object? isLoggedin = null,Object? authresponsemodel = freezed,Object? employeestatusresponse = freezed,Object? isLoggedout = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isLoggedin: null == isLoggedin ? _self.isLoggedin : isLoggedin // ignore: cast_nullable_to_non_nullable
as bool,authresponsemodel: freezed == authresponsemodel ? _self.authresponsemodel : authresponsemodel // ignore: cast_nullable_to_non_nullable
as AuthResponseModel?,employeestatusresponse: freezed == employeestatusresponse ? _self.employeestatusresponse : employeestatusresponse // ignore: cast_nullable_to_non_nullable
as EmployeeStatusResponse?,isLoggedout: freezed == isLoggedout ? _self.isLoggedout : isLoggedout // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isLoggedin,  AuthResponseModel? authresponsemodel,  EmployeeStatusResponse? employeestatusresponse,  bool? isLoggedout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isLoggedin,_that.authresponsemodel,_that.employeestatusresponse,_that.isLoggedout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isLoggedin,  AuthResponseModel? authresponsemodel,  EmployeeStatusResponse? employeestatusresponse,  bool? isLoggedout)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isLoggedin,_that.authresponsemodel,_that.employeestatusresponse,_that.isLoggedout);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  bool isSuccess,  String successMessage,  bool isLoggedin,  AuthResponseModel? authresponsemodel,  EmployeeStatusResponse? employeestatusresponse,  bool? isLoggedout)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.successMessage,_that.isLoggedin,_that.authresponsemodel,_that.employeestatusresponse,_that.isLoggedout);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
   _AuthState({required this.isLoading, required this.isError, required this.isSuccess, required this.successMessage, required this.isLoggedin, this.authresponsemodel, this.employeestatusresponse, required this.isLoggedout});
  

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isSuccess;
@override final  String successMessage;
@override final  bool isLoggedin;
@override final  AuthResponseModel? authresponsemodel;
@override final  EmployeeStatusResponse? employeestatusresponse;
// dont use this here ,change later
@override final  bool? isLoggedout;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isLoggedin, isLoggedin) || other.isLoggedin == isLoggedin)&&(identical(other.authresponsemodel, authresponsemodel) || other.authresponsemodel == authresponsemodel)&&(identical(other.employeestatusresponse, employeestatusresponse) || other.employeestatusresponse == employeestatusresponse)&&(identical(other.isLoggedout, isLoggedout) || other.isLoggedout == isLoggedout));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,successMessage,isLoggedin,authresponsemodel,employeestatusresponse,isLoggedout);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, successMessage: $successMessage, isLoggedin: $isLoggedin, authresponsemodel: $authresponsemodel, employeestatusresponse: $employeestatusresponse, isLoggedout: $isLoggedout)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, String successMessage, bool isLoggedin, AuthResponseModel? authresponsemodel, EmployeeStatusResponse? employeestatusresponse, bool? isLoggedout
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
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? successMessage = null,Object? isLoggedin = null,Object? authresponsemodel = freezed,Object? employeestatusresponse = freezed,Object? isLoggedout = freezed,}) {
  return _then(_AuthState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,isLoggedin: null == isLoggedin ? _self.isLoggedin : isLoggedin // ignore: cast_nullable_to_non_nullable
as bool,authresponsemodel: freezed == authresponsemodel ? _self.authresponsemodel : authresponsemodel // ignore: cast_nullable_to_non_nullable
as AuthResponseModel?,employeestatusresponse: freezed == employeestatusresponse ? _self.employeestatusresponse : employeestatusresponse // ignore: cast_nullable_to_non_nullable
as EmployeeStatusResponse?,isLoggedout: freezed == isLoggedout ? _self.isLoggedout : isLoggedout // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
