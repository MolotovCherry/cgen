// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_id_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KeyIdMethod {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyIdMethod);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KeyIdMethod()';
}


}

/// @nodoc
class $KeyIdMethodCopyWith<$Res>  {
$KeyIdMethodCopyWith(KeyIdMethod _, $Res Function(KeyIdMethod) __);
}


/// Adds pattern-matching-related methods to [KeyIdMethod].
extension KeyIdMethodPatterns on KeyIdMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( KeyIdMethod_Sha256 value)?  sha256,TResult Function( KeyIdMethod_Sha384 value)?  sha384,TResult Function( KeyIdMethod_Sha512 value)?  sha512,TResult Function( KeyIdMethod_PreSpecified value)?  preSpecified,required TResult orElse(),}){
final _that = this;
switch (_that) {
case KeyIdMethod_Sha256() when sha256 != null:
return sha256(_that);case KeyIdMethod_Sha384() when sha384 != null:
return sha384(_that);case KeyIdMethod_Sha512() when sha512 != null:
return sha512(_that);case KeyIdMethod_PreSpecified() when preSpecified != null:
return preSpecified(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( KeyIdMethod_Sha256 value)  sha256,required TResult Function( KeyIdMethod_Sha384 value)  sha384,required TResult Function( KeyIdMethod_Sha512 value)  sha512,required TResult Function( KeyIdMethod_PreSpecified value)  preSpecified,}){
final _that = this;
switch (_that) {
case KeyIdMethod_Sha256():
return sha256(_that);case KeyIdMethod_Sha384():
return sha384(_that);case KeyIdMethod_Sha512():
return sha512(_that);case KeyIdMethod_PreSpecified():
return preSpecified(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( KeyIdMethod_Sha256 value)?  sha256,TResult? Function( KeyIdMethod_Sha384 value)?  sha384,TResult? Function( KeyIdMethod_Sha512 value)?  sha512,TResult? Function( KeyIdMethod_PreSpecified value)?  preSpecified,}){
final _that = this;
switch (_that) {
case KeyIdMethod_Sha256() when sha256 != null:
return sha256(_that);case KeyIdMethod_Sha384() when sha384 != null:
return sha384(_that);case KeyIdMethod_Sha512() when sha512 != null:
return sha512(_that);case KeyIdMethod_PreSpecified() when preSpecified != null:
return preSpecified(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  sha256,TResult Function()?  sha384,TResult Function()?  sha512,TResult Function( Uint8List field0)?  preSpecified,required TResult orElse(),}) {final _that = this;
switch (_that) {
case KeyIdMethod_Sha256() when sha256 != null:
return sha256();case KeyIdMethod_Sha384() when sha384 != null:
return sha384();case KeyIdMethod_Sha512() when sha512 != null:
return sha512();case KeyIdMethod_PreSpecified() when preSpecified != null:
return preSpecified(_that.field0);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  sha256,required TResult Function()  sha384,required TResult Function()  sha512,required TResult Function( Uint8List field0)  preSpecified,}) {final _that = this;
switch (_that) {
case KeyIdMethod_Sha256():
return sha256();case KeyIdMethod_Sha384():
return sha384();case KeyIdMethod_Sha512():
return sha512();case KeyIdMethod_PreSpecified():
return preSpecified(_that.field0);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  sha256,TResult? Function()?  sha384,TResult? Function()?  sha512,TResult? Function( Uint8List field0)?  preSpecified,}) {final _that = this;
switch (_that) {
case KeyIdMethod_Sha256() when sha256 != null:
return sha256();case KeyIdMethod_Sha384() when sha384 != null:
return sha384();case KeyIdMethod_Sha512() when sha512 != null:
return sha512();case KeyIdMethod_PreSpecified() when preSpecified != null:
return preSpecified(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class KeyIdMethod_Sha256 extends KeyIdMethod {
  const KeyIdMethod_Sha256(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyIdMethod_Sha256);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KeyIdMethod.sha256()';
}


}




/// @nodoc


class KeyIdMethod_Sha384 extends KeyIdMethod {
  const KeyIdMethod_Sha384(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyIdMethod_Sha384);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KeyIdMethod.sha384()';
}


}




/// @nodoc


class KeyIdMethod_Sha512 extends KeyIdMethod {
  const KeyIdMethod_Sha512(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyIdMethod_Sha512);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KeyIdMethod.sha512()';
}


}




/// @nodoc


class KeyIdMethod_PreSpecified extends KeyIdMethod {
  const KeyIdMethod_PreSpecified(this.field0): super._();
  

 final  Uint8List field0;

/// Create a copy of KeyIdMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeyIdMethod_PreSpecifiedCopyWith<KeyIdMethod_PreSpecified> get copyWith => _$KeyIdMethod_PreSpecifiedCopyWithImpl<KeyIdMethod_PreSpecified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeyIdMethod_PreSpecified&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'KeyIdMethod.preSpecified(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $KeyIdMethod_PreSpecifiedCopyWith<$Res> implements $KeyIdMethodCopyWith<$Res> {
  factory $KeyIdMethod_PreSpecifiedCopyWith(KeyIdMethod_PreSpecified value, $Res Function(KeyIdMethod_PreSpecified) _then) = _$KeyIdMethod_PreSpecifiedCopyWithImpl;
@useResult
$Res call({
 Uint8List field0
});




}
/// @nodoc
class _$KeyIdMethod_PreSpecifiedCopyWithImpl<$Res>
    implements $KeyIdMethod_PreSpecifiedCopyWith<$Res> {
  _$KeyIdMethod_PreSpecifiedCopyWithImpl(this._self, this._then);

  final KeyIdMethod_PreSpecified _self;
  final $Res Function(KeyIdMethod_PreSpecified) _then;

/// Create a copy of KeyIdMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(KeyIdMethod_PreSpecified(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

// dart format on
