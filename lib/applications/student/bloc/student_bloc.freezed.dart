// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEvent()';
}


}

/// @nodoc
class $StudentEventCopyWith<$Res>  {
$StudentEventCopyWith(StudentEvent _, $Res Function(StudentEvent) __);
}


/// Adds pattern-matching-related methods to [StudentEvent].
extension StudentEventPatterns on StudentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateStudent value)?  createStudent,TResult Function( GetStudent value)?  getStudents,TResult Function( UpdateStudent value)?  updateStudent,TResult Function( DeleteStudent value)?  deleteStudent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateStudent() when createStudent != null:
return createStudent(_that);case GetStudent() when getStudents != null:
return getStudents(_that);case UpdateStudent() when updateStudent != null:
return updateStudent(_that);case DeleteStudent() when deleteStudent != null:
return deleteStudent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateStudent value)  createStudent,required TResult Function( GetStudent value)  getStudents,required TResult Function( UpdateStudent value)  updateStudent,required TResult Function( DeleteStudent value)  deleteStudent,}){
final _that = this;
switch (_that) {
case CreateStudent():
return createStudent(_that);case GetStudent():
return getStudents(_that);case UpdateStudent():
return updateStudent(_that);case DeleteStudent():
return deleteStudent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateStudent value)?  createStudent,TResult? Function( GetStudent value)?  getStudents,TResult? Function( UpdateStudent value)?  updateStudent,TResult? Function( DeleteStudent value)?  deleteStudent,}){
final _that = this;
switch (_that) {
case CreateStudent() when createStudent != null:
return createStudent(_that);case GetStudent() when getStudents != null:
return getStudents(_that);case UpdateStudent() when updateStudent != null:
return updateStudent(_that);case DeleteStudent() when deleteStudent != null:
return deleteStudent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StudentRequestmodel studentRequestmodel)?  createStudent,TResult Function()?  getStudents,TResult Function( StudentRequestmodel studentRequestmodel)?  updateStudent,TResult Function( StudentRequestmodel studentRequestmodel)?  deleteStudent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateStudent() when createStudent != null:
return createStudent(_that.studentRequestmodel);case GetStudent() when getStudents != null:
return getStudents();case UpdateStudent() when updateStudent != null:
return updateStudent(_that.studentRequestmodel);case DeleteStudent() when deleteStudent != null:
return deleteStudent(_that.studentRequestmodel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StudentRequestmodel studentRequestmodel)  createStudent,required TResult Function()  getStudents,required TResult Function( StudentRequestmodel studentRequestmodel)  updateStudent,required TResult Function( StudentRequestmodel studentRequestmodel)  deleteStudent,}) {final _that = this;
switch (_that) {
case CreateStudent():
return createStudent(_that.studentRequestmodel);case GetStudent():
return getStudents();case UpdateStudent():
return updateStudent(_that.studentRequestmodel);case DeleteStudent():
return deleteStudent(_that.studentRequestmodel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StudentRequestmodel studentRequestmodel)?  createStudent,TResult? Function()?  getStudents,TResult? Function( StudentRequestmodel studentRequestmodel)?  updateStudent,TResult? Function( StudentRequestmodel studentRequestmodel)?  deleteStudent,}) {final _that = this;
switch (_that) {
case CreateStudent() when createStudent != null:
return createStudent(_that.studentRequestmodel);case GetStudent() when getStudents != null:
return getStudents();case UpdateStudent() when updateStudent != null:
return updateStudent(_that.studentRequestmodel);case DeleteStudent() when deleteStudent != null:
return deleteStudent(_that.studentRequestmodel);case _:
  return null;

}
}

}

/// @nodoc


class CreateStudent with DiagnosticableTreeMixin implements StudentEvent {
  const CreateStudent({required this.studentRequestmodel});
  

 final  StudentRequestmodel studentRequestmodel;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStudentCopyWith<CreateStudent> get copyWith => _$CreateStudentCopyWithImpl<CreateStudent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEvent.createStudent'))
    ..add(DiagnosticsProperty('studentRequestmodel', studentRequestmodel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStudent&&(identical(other.studentRequestmodel, studentRequestmodel) || other.studentRequestmodel == studentRequestmodel));
}


@override
int get hashCode => Object.hash(runtimeType,studentRequestmodel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEvent.createStudent(studentRequestmodel: $studentRequestmodel)';
}


}

/// @nodoc
abstract mixin class $CreateStudentCopyWith<$Res> implements $StudentEventCopyWith<$Res> {
  factory $CreateStudentCopyWith(CreateStudent value, $Res Function(CreateStudent) _then) = _$CreateStudentCopyWithImpl;
@useResult
$Res call({
 StudentRequestmodel studentRequestmodel
});




}
/// @nodoc
class _$CreateStudentCopyWithImpl<$Res>
    implements $CreateStudentCopyWith<$Res> {
  _$CreateStudentCopyWithImpl(this._self, this._then);

  final CreateStudent _self;
  final $Res Function(CreateStudent) _then;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentRequestmodel = null,}) {
  return _then(CreateStudent(
studentRequestmodel: null == studentRequestmodel ? _self.studentRequestmodel : studentRequestmodel // ignore: cast_nullable_to_non_nullable
as StudentRequestmodel,
  ));
}


}

/// @nodoc


class GetStudent with DiagnosticableTreeMixin implements StudentEvent {
  const GetStudent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEvent.getStudents'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStudent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEvent.getStudents()';
}


}




/// @nodoc


class UpdateStudent with DiagnosticableTreeMixin implements StudentEvent {
  const UpdateStudent({required this.studentRequestmodel});
  

 final  StudentRequestmodel studentRequestmodel;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStudentCopyWith<UpdateStudent> get copyWith => _$UpdateStudentCopyWithImpl<UpdateStudent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEvent.updateStudent'))
    ..add(DiagnosticsProperty('studentRequestmodel', studentRequestmodel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStudent&&(identical(other.studentRequestmodel, studentRequestmodel) || other.studentRequestmodel == studentRequestmodel));
}


@override
int get hashCode => Object.hash(runtimeType,studentRequestmodel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEvent.updateStudent(studentRequestmodel: $studentRequestmodel)';
}


}

/// @nodoc
abstract mixin class $UpdateStudentCopyWith<$Res> implements $StudentEventCopyWith<$Res> {
  factory $UpdateStudentCopyWith(UpdateStudent value, $Res Function(UpdateStudent) _then) = _$UpdateStudentCopyWithImpl;
@useResult
$Res call({
 StudentRequestmodel studentRequestmodel
});




}
/// @nodoc
class _$UpdateStudentCopyWithImpl<$Res>
    implements $UpdateStudentCopyWith<$Res> {
  _$UpdateStudentCopyWithImpl(this._self, this._then);

  final UpdateStudent _self;
  final $Res Function(UpdateStudent) _then;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentRequestmodel = null,}) {
  return _then(UpdateStudent(
studentRequestmodel: null == studentRequestmodel ? _self.studentRequestmodel : studentRequestmodel // ignore: cast_nullable_to_non_nullable
as StudentRequestmodel,
  ));
}


}

/// @nodoc


class DeleteStudent with DiagnosticableTreeMixin implements StudentEvent {
  const DeleteStudent({required this.studentRequestmodel});
  

 final  StudentRequestmodel studentRequestmodel;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteStudentCopyWith<DeleteStudent> get copyWith => _$DeleteStudentCopyWithImpl<DeleteStudent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentEvent.deleteStudent'))
    ..add(DiagnosticsProperty('studentRequestmodel', studentRequestmodel));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteStudent&&(identical(other.studentRequestmodel, studentRequestmodel) || other.studentRequestmodel == studentRequestmodel));
}


@override
int get hashCode => Object.hash(runtimeType,studentRequestmodel);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentEvent.deleteStudent(studentRequestmodel: $studentRequestmodel)';
}


}

/// @nodoc
abstract mixin class $DeleteStudentCopyWith<$Res> implements $StudentEventCopyWith<$Res> {
  factory $DeleteStudentCopyWith(DeleteStudent value, $Res Function(DeleteStudent) _then) = _$DeleteStudentCopyWithImpl;
@useResult
$Res call({
 StudentRequestmodel studentRequestmodel
});




}
/// @nodoc
class _$DeleteStudentCopyWithImpl<$Res>
    implements $DeleteStudentCopyWith<$Res> {
  _$DeleteStudentCopyWithImpl(this._self, this._then);

  final DeleteStudent _self;
  final $Res Function(DeleteStudent) _then;

/// Create a copy of StudentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? studentRequestmodel = null,}) {
  return _then(DeleteStudent(
studentRequestmodel: null == studentRequestmodel ? _self.studentRequestmodel : studentRequestmodel // ignore: cast_nullable_to_non_nullable
as StudentRequestmodel,
  ));
}


}

/// @nodoc
mixin _$StudentState implements DiagnosticableTreeMixin {

 bool get isLoading; bool get isError; bool get isSuccess; List<StudentRequestmodel>? get studentRequestmodel; String get successMessage;
/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentStateCopyWith<StudentState> get copyWith => _$StudentStateCopyWithImpl<StudentState>(this as StudentState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('studentRequestmodel', studentRequestmodel))..add(DiagnosticsProperty('successMessage', successMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.studentRequestmodel, studentRequestmodel)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,const DeepCollectionEquality().hash(studentRequestmodel),successMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, studentRequestmodel: $studentRequestmodel, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $StudentStateCopyWith<$Res>  {
  factory $StudentStateCopyWith(StudentState value, $Res Function(StudentState) _then) = _$StudentStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, List<StudentRequestmodel>? studentRequestmodel, String successMessage
});




}
/// @nodoc
class _$StudentStateCopyWithImpl<$Res>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._self, this._then);

  final StudentState _self;
  final $Res Function(StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? studentRequestmodel = freezed,Object? successMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,studentRequestmodel: freezed == studentRequestmodel ? _self.studentRequestmodel : studentRequestmodel // ignore: cast_nullable_to_non_nullable
as List<StudentRequestmodel>?,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentState].
extension StudentStatePatterns on StudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentState value)  $default,){
final _that = this;
switch (_that) {
case _StudentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentState value)?  $default,){
final _that = this;
switch (_that) {
case _StudentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  List<StudentRequestmodel>? studentRequestmodel,  String successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.studentRequestmodel,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isSuccess,  List<StudentRequestmodel>? studentRequestmodel,  String successMessage)  $default,) {final _that = this;
switch (_that) {
case _StudentState():
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.studentRequestmodel,_that.successMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  bool isSuccess,  List<StudentRequestmodel>? studentRequestmodel,  String successMessage)?  $default,) {final _that = this;
switch (_that) {
case _StudentState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isSuccess,_that.studentRequestmodel,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _StudentState with DiagnosticableTreeMixin implements StudentState {
   _StudentState({required this.isLoading, required this.isError, required this.isSuccess, final  List<StudentRequestmodel>? studentRequestmodel, required this.successMessage}): _studentRequestmodel = studentRequestmodel;
  

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isSuccess;
 final  List<StudentRequestmodel>? _studentRequestmodel;
@override List<StudentRequestmodel>? get studentRequestmodel {
  final value = _studentRequestmodel;
  if (value == null) return null;
  if (_studentRequestmodel is EqualUnmodifiableListView) return _studentRequestmodel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String successMessage;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentStateCopyWith<_StudentState> get copyWith => __$StudentStateCopyWithImpl<_StudentState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'StudentState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('isSuccess', isSuccess))..add(DiagnosticsProperty('studentRequestmodel', studentRequestmodel))..add(DiagnosticsProperty('successMessage', successMessage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other._studentRequestmodel, _studentRequestmodel)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isSuccess,const DeepCollectionEquality().hash(_studentRequestmodel),successMessage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'StudentState(isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, studentRequestmodel: $studentRequestmodel, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$StudentStateCopyWith<$Res> implements $StudentStateCopyWith<$Res> {
  factory _$StudentStateCopyWith(_StudentState value, $Res Function(_StudentState) _then) = __$StudentStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, bool isSuccess, List<StudentRequestmodel>? studentRequestmodel, String successMessage
});




}
/// @nodoc
class __$StudentStateCopyWithImpl<$Res>
    implements _$StudentStateCopyWith<$Res> {
  __$StudentStateCopyWithImpl(this._self, this._then);

  final _StudentState _self;
  final $Res Function(_StudentState) _then;

/// Create a copy of StudentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? isSuccess = null,Object? studentRequestmodel = freezed,Object? successMessage = null,}) {
  return _then(_StudentState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,studentRequestmodel: freezed == studentRequestmodel ? _self._studentRequestmodel : studentRequestmodel // ignore: cast_nullable_to_non_nullable
as List<StudentRequestmodel>?,successMessage: null == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
