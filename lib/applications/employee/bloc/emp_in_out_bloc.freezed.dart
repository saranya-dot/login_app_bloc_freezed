// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emp_in_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmpInOutEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpInOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutEvent()';
}


}

/// @nodoc
class $EmpInOutEventCopyWith<$Res>  {
$EmpInOutEventCopyWith(EmpInOutEvent _, $Res Function(EmpInOutEvent) __);
}


/// Adds pattern-matching-related methods to [EmpInOutEvent].
extension EmpInOutEventPatterns on EmpInOutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmployeeCheckinCheckout value)?  employeeCheckinCheckout,TResult Function( SelectVehicleEvent value)?  selectVehicle,TResult Function( EmployeeStatusCheck value)?  employeeStatusCheck,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmployeeCheckinCheckout() when employeeCheckinCheckout != null:
return employeeCheckinCheckout(_that);case SelectVehicleEvent() when selectVehicle != null:
return selectVehicle(_that);case EmployeeStatusCheck() when employeeStatusCheck != null:
return employeeStatusCheck(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmployeeCheckinCheckout value)  employeeCheckinCheckout,required TResult Function( SelectVehicleEvent value)  selectVehicle,required TResult Function( EmployeeStatusCheck value)  employeeStatusCheck,}){
final _that = this;
switch (_that) {
case EmployeeCheckinCheckout():
return employeeCheckinCheckout(_that);case SelectVehicleEvent():
return selectVehicle(_that);case EmployeeStatusCheck():
return employeeStatusCheck(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmployeeCheckinCheckout value)?  employeeCheckinCheckout,TResult? Function( SelectVehicleEvent value)?  selectVehicle,TResult? Function( EmployeeStatusCheck value)?  employeeStatusCheck,}){
final _that = this;
switch (_that) {
case EmployeeCheckinCheckout() when employeeCheckinCheckout != null:
return employeeCheckinCheckout(_that);case SelectVehicleEvent() when selectVehicle != null:
return selectVehicle(_that);case EmployeeStatusCheck() when employeeStatusCheck != null:
return employeeStatusCheck(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EmployeeCheckinCheckoutRequestModel empcheckinout)?  employeeCheckinCheckout,TResult Function( String vehicle)?  selectVehicle,TResult Function()?  employeeStatusCheck,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmployeeCheckinCheckout() when employeeCheckinCheckout != null:
return employeeCheckinCheckout(_that.empcheckinout);case SelectVehicleEvent() when selectVehicle != null:
return selectVehicle(_that.vehicle);case EmployeeStatusCheck() when employeeStatusCheck != null:
return employeeStatusCheck();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EmployeeCheckinCheckoutRequestModel empcheckinout)  employeeCheckinCheckout,required TResult Function( String vehicle)  selectVehicle,required TResult Function()  employeeStatusCheck,}) {final _that = this;
switch (_that) {
case EmployeeCheckinCheckout():
return employeeCheckinCheckout(_that.empcheckinout);case SelectVehicleEvent():
return selectVehicle(_that.vehicle);case EmployeeStatusCheck():
return employeeStatusCheck();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EmployeeCheckinCheckoutRequestModel empcheckinout)?  employeeCheckinCheckout,TResult? Function( String vehicle)?  selectVehicle,TResult? Function()?  employeeStatusCheck,}) {final _that = this;
switch (_that) {
case EmployeeCheckinCheckout() when employeeCheckinCheckout != null:
return employeeCheckinCheckout(_that.empcheckinout);case SelectVehicleEvent() when selectVehicle != null:
return selectVehicle(_that.vehicle);case EmployeeStatusCheck() when employeeStatusCheck != null:
return employeeStatusCheck();case _:
  return null;

}
}

}

/// @nodoc


class EmployeeCheckinCheckout with DiagnosticableTreeMixin implements EmpInOutEvent {
  const EmployeeCheckinCheckout({required this.empcheckinout});
  

 final  EmployeeCheckinCheckoutRequestModel empcheckinout;

/// Create a copy of EmpInOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCheckinCheckoutCopyWith<EmployeeCheckinCheckout> get copyWith => _$EmployeeCheckinCheckoutCopyWithImpl<EmployeeCheckinCheckout>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutEvent.employeeCheckinCheckout'))
    ..add(DiagnosticsProperty('empcheckinout', empcheckinout));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeCheckinCheckout&&(identical(other.empcheckinout, empcheckinout) || other.empcheckinout == empcheckinout));
}


@override
int get hashCode => Object.hash(runtimeType,empcheckinout);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutEvent.employeeCheckinCheckout(empcheckinout: $empcheckinout)';
}


}

/// @nodoc
abstract mixin class $EmployeeCheckinCheckoutCopyWith<$Res> implements $EmpInOutEventCopyWith<$Res> {
  factory $EmployeeCheckinCheckoutCopyWith(EmployeeCheckinCheckout value, $Res Function(EmployeeCheckinCheckout) _then) = _$EmployeeCheckinCheckoutCopyWithImpl;
@useResult
$Res call({
 EmployeeCheckinCheckoutRequestModel empcheckinout
});




}
/// @nodoc
class _$EmployeeCheckinCheckoutCopyWithImpl<$Res>
    implements $EmployeeCheckinCheckoutCopyWith<$Res> {
  _$EmployeeCheckinCheckoutCopyWithImpl(this._self, this._then);

  final EmployeeCheckinCheckout _self;
  final $Res Function(EmployeeCheckinCheckout) _then;

/// Create a copy of EmpInOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? empcheckinout = null,}) {
  return _then(EmployeeCheckinCheckout(
empcheckinout: null == empcheckinout ? _self.empcheckinout : empcheckinout // ignore: cast_nullable_to_non_nullable
as EmployeeCheckinCheckoutRequestModel,
  ));
}


}

/// @nodoc


class SelectVehicleEvent with DiagnosticableTreeMixin implements EmpInOutEvent {
  const SelectVehicleEvent({required this.vehicle});
  

 final  String vehicle;

/// Create a copy of EmpInOutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectVehicleEventCopyWith<SelectVehicleEvent> get copyWith => _$SelectVehicleEventCopyWithImpl<SelectVehicleEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutEvent.selectVehicle'))
    ..add(DiagnosticsProperty('vehicle', vehicle));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectVehicleEvent&&(identical(other.vehicle, vehicle) || other.vehicle == vehicle));
}


@override
int get hashCode => Object.hash(runtimeType,vehicle);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutEvent.selectVehicle(vehicle: $vehicle)';
}


}

/// @nodoc
abstract mixin class $SelectVehicleEventCopyWith<$Res> implements $EmpInOutEventCopyWith<$Res> {
  factory $SelectVehicleEventCopyWith(SelectVehicleEvent value, $Res Function(SelectVehicleEvent) _then) = _$SelectVehicleEventCopyWithImpl;
@useResult
$Res call({
 String vehicle
});




}
/// @nodoc
class _$SelectVehicleEventCopyWithImpl<$Res>
    implements $SelectVehicleEventCopyWith<$Res> {
  _$SelectVehicleEventCopyWithImpl(this._self, this._then);

  final SelectVehicleEvent _self;
  final $Res Function(SelectVehicleEvent) _then;

/// Create a copy of EmpInOutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? vehicle = null,}) {
  return _then(SelectVehicleEvent(
vehicle: null == vehicle ? _self.vehicle : vehicle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmployeeStatusCheck with DiagnosticableTreeMixin implements EmpInOutEvent {
  const EmployeeStatusCheck();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutEvent.employeeStatusCheck'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeStatusCheck);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutEvent.employeeStatusCheck()';
}


}




/// @nodoc
mixin _$EmpInOutState implements DiagnosticableTreeMixin {

 bool get isLoading; bool get isError; String? get selectedVehicle; EmployeeStatusResponse? get emplyeestatusresponse; bool get isSuccess; String get successMessage;
/// Create a copy of EmpInOutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpInOutStateCopyWith<EmpInOutState> get copyWith => _$EmpInOutStateCopyWithImpl<EmpInOutState>(this as EmpInOutState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('selectedVehicle', selectedVehicle))..add(DiagnosticsProperty('emplyeestatusresponse', emplyeestatusresponse))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('successMessage', successMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmpInOutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.selectedVehicle, selectedVehicle) || other.selectedVehicle == selectedVehicle)&&(identical(other.emplyeestatusresponse, emplyeestatusresponse) || other.emplyeestatusresponse == emplyeestatusresponse)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,selectedVehicle,emplyeestatusresponse,isSuccess,successMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutState(isLoading: $isLoading, isError: $isError, selectedVehicle: $selectedVehicle, emplyeestatusresponse: $emplyeestatusresponse, isSuccess: $isSuccess, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $EmpInOutStateCopyWith<$Res>  {
  factory $EmpInOutStateCopyWith(EmpInOutState value, $Res Function(EmpInOutState) _then) = _$EmpInOutStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String? selectedVehicle, EmployeeStatusResponse? emplyeestatusresponse, bool isSuccess, String successMessage
});




}
/// @nodoc
class _$EmpInOutStateCopyWithImpl<$Res>
    implements $EmpInOutStateCopyWith<$Res> {
  _$EmpInOutStateCopyWithImpl(this._self, this._then);

  final EmpInOutState _self;
  final $Res Function(EmpInOutState) _then;

/// Create a copy of EmpInOutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? selectedVehicle = freezed,Object? emplyeestatusresponse = freezed,Object? isSuccess = null,Object? successMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,selectedVehicle: freezed == selectedVehicle ? _self.selectedVehicle : selectedVehicle // ignore: cast_nullable_to_non_nullable
as String?,emplyeestatusresponse: freezed == emplyeestatusresponse ? _self.emplyeestatusresponse : emplyeestatusresponse // ignore: cast_nullable_to_non_nullable
as EmployeeStatusResponse?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmpInOutState].
extension EmpInOutStatePatterns on EmpInOutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmpInOutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmpInOutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmpInOutState value)  $default,){
final _that = this;
switch (_that) {
case _EmpInOutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmpInOutState value)?  $default,){
final _that = this;
switch (_that) {
case _EmpInOutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String? selectedVehicle,  EmployeeStatusResponse? emplyeestatusresponse,  bool isSuccess,  String successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmpInOutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.selectedVehicle,_that.emplyeestatusresponse,_that.isSuccess,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String? selectedVehicle,  EmployeeStatusResponse? emplyeestatusresponse,  bool isSuccess,  String successMessage)  $default,) {final _that = this;
switch (_that) {
case _EmpInOutState():
return $default(_that.isLoading,_that.isError,_that.selectedVehicle,_that.emplyeestatusresponse,_that.isSuccess,_that.successMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  String? selectedVehicle,  EmployeeStatusResponse? emplyeestatusresponse,  bool isSuccess,  String successMessage)?  $default,) {final _that = this;
switch (_that) {
case _EmpInOutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.selectedVehicle,_that.emplyeestatusresponse,_that.isSuccess,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EmpInOutState with DiagnosticableTreeMixin implements EmpInOutState {
   _EmpInOutState({required this.isLoading, required this.isError, required this.selectedVehicle, required this.emplyeestatusresponse, required this.isSuccess, required this.successMessage});
  

@override final  bool isLoading;
@override final  bool isError;
@override final  String? selectedVehicle;
@override final  EmployeeStatusResponse? emplyeestatusresponse;
@override final  bool isSuccess;
@override final  String successMessage;

/// Create a copy of EmpInOutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpInOutStateCopyWith<_EmpInOutState> get copyWith => __$EmpInOutStateCopyWithImpl<_EmpInOutState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmpInOutState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('selectedVehicle', selectedVehicle))..add(DiagnosticsProperty('emplyeestatusresponse', emplyeestatusresponse))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('successMessage', successMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmpInOutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.selectedVehicle, selectedVehicle) || other.selectedVehicle == selectedVehicle)&&(identical(other.emplyeestatusresponse, emplyeestatusresponse) || other.emplyeestatusresponse == emplyeestatusresponse)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,selectedVehicle,emplyeestatusresponse,isSuccess,successMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmpInOutState(isLoading: $isLoading, isError: $isError, selectedVehicle: $selectedVehicle, emplyeestatusresponse: $emplyeestatusresponse, isSuccess: $isSuccess, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$EmpInOutStateCopyWith<$Res> implements $EmpInOutStateCopyWith<$Res> {
  factory _$EmpInOutStateCopyWith(_EmpInOutState value, $Res Function(_EmpInOutState) _then) = __$EmpInOutStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String? selectedVehicle, EmployeeStatusResponse? emplyeestatusresponse, bool isSuccess, String successMessage
});




}
/// @nodoc
class __$EmpInOutStateCopyWithImpl<$Res>
    implements _$EmpInOutStateCopyWith<$Res> {
  __$EmpInOutStateCopyWithImpl(this._self, this._then);

  final _EmpInOutState _self;
  final $Res Function(_EmpInOutState) _then;

/// Create a copy of EmpInOutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? selectedVehicle = freezed,Object? emplyeestatusresponse = freezed,Object? isSuccess = null,Object? successMessage = null,}) {
  return _then(_EmpInOutState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,selectedVehicle: freezed == selectedVehicle ? _self.selectedVehicle : selectedVehicle // ignore: cast_nullable_to_non_nullable
as String?,emplyeestatusresponse: freezed == emplyeestatusresponse ? _self.emplyeestatusresponse : emplyeestatusresponse // ignore: cast_nullable_to_non_nullable
as EmployeeStatusResponse?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
