// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extended_key_usage_purpose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtendedKeyUsagePurpose {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose()';
}


}

/// @nodoc
class $ExtendedKeyUsagePurposeCopyWith<$Res>  {
$ExtendedKeyUsagePurposeCopyWith(ExtendedKeyUsagePurpose _, $Res Function(ExtendedKeyUsagePurpose) __);
}


/// Adds pattern-matching-related methods to [ExtendedKeyUsagePurpose].
extension ExtendedKeyUsagePurposePatterns on ExtendedKeyUsagePurpose {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExtendedKeyUsagePurpose_Any value)?  any,TResult Function( ExtendedKeyUsagePurpose_ServerAuth value)?  serverAuth,TResult Function( ExtendedKeyUsagePurpose_ClientAuth value)?  clientAuth,TResult Function( ExtendedKeyUsagePurpose_CodeSigning value)?  codeSigning,TResult Function( ExtendedKeyUsagePurpose_EmailProtection value)?  emailProtection,TResult Function( ExtendedKeyUsagePurpose_TimeStamping value)?  timeStamping,TResult Function( ExtendedKeyUsagePurpose_OcspSigning value)?  ocspSigning,TResult Function( ExtendedKeyUsagePurpose_Other value)?  other,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any() when any != null:
return any(_that);case ExtendedKeyUsagePurpose_ServerAuth() when serverAuth != null:
return serverAuth(_that);case ExtendedKeyUsagePurpose_ClientAuth() when clientAuth != null:
return clientAuth(_that);case ExtendedKeyUsagePurpose_CodeSigning() when codeSigning != null:
return codeSigning(_that);case ExtendedKeyUsagePurpose_EmailProtection() when emailProtection != null:
return emailProtection(_that);case ExtendedKeyUsagePurpose_TimeStamping() when timeStamping != null:
return timeStamping(_that);case ExtendedKeyUsagePurpose_OcspSigning() when ocspSigning != null:
return ocspSigning(_that);case ExtendedKeyUsagePurpose_Other() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExtendedKeyUsagePurpose_Any value)  any,required TResult Function( ExtendedKeyUsagePurpose_ServerAuth value)  serverAuth,required TResult Function( ExtendedKeyUsagePurpose_ClientAuth value)  clientAuth,required TResult Function( ExtendedKeyUsagePurpose_CodeSigning value)  codeSigning,required TResult Function( ExtendedKeyUsagePurpose_EmailProtection value)  emailProtection,required TResult Function( ExtendedKeyUsagePurpose_TimeStamping value)  timeStamping,required TResult Function( ExtendedKeyUsagePurpose_OcspSigning value)  ocspSigning,required TResult Function( ExtendedKeyUsagePurpose_Other value)  other,}){
final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any():
return any(_that);case ExtendedKeyUsagePurpose_ServerAuth():
return serverAuth(_that);case ExtendedKeyUsagePurpose_ClientAuth():
return clientAuth(_that);case ExtendedKeyUsagePurpose_CodeSigning():
return codeSigning(_that);case ExtendedKeyUsagePurpose_EmailProtection():
return emailProtection(_that);case ExtendedKeyUsagePurpose_TimeStamping():
return timeStamping(_that);case ExtendedKeyUsagePurpose_OcspSigning():
return ocspSigning(_that);case ExtendedKeyUsagePurpose_Other():
return other(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExtendedKeyUsagePurpose_Any value)?  any,TResult? Function( ExtendedKeyUsagePurpose_ServerAuth value)?  serverAuth,TResult? Function( ExtendedKeyUsagePurpose_ClientAuth value)?  clientAuth,TResult? Function( ExtendedKeyUsagePurpose_CodeSigning value)?  codeSigning,TResult? Function( ExtendedKeyUsagePurpose_EmailProtection value)?  emailProtection,TResult? Function( ExtendedKeyUsagePurpose_TimeStamping value)?  timeStamping,TResult? Function( ExtendedKeyUsagePurpose_OcspSigning value)?  ocspSigning,TResult? Function( ExtendedKeyUsagePurpose_Other value)?  other,}){
final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any() when any != null:
return any(_that);case ExtendedKeyUsagePurpose_ServerAuth() when serverAuth != null:
return serverAuth(_that);case ExtendedKeyUsagePurpose_ClientAuth() when clientAuth != null:
return clientAuth(_that);case ExtendedKeyUsagePurpose_CodeSigning() when codeSigning != null:
return codeSigning(_that);case ExtendedKeyUsagePurpose_EmailProtection() when emailProtection != null:
return emailProtection(_that);case ExtendedKeyUsagePurpose_TimeStamping() when timeStamping != null:
return timeStamping(_that);case ExtendedKeyUsagePurpose_OcspSigning() when ocspSigning != null:
return ocspSigning(_that);case ExtendedKeyUsagePurpose_Other() when other != null:
return other(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  any,TResult Function()?  serverAuth,TResult Function()?  clientAuth,TResult Function()?  codeSigning,TResult Function()?  emailProtection,TResult Function()?  timeStamping,TResult Function()?  ocspSigning,TResult Function( Uint64List field0)?  other,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any() when any != null:
return any();case ExtendedKeyUsagePurpose_ServerAuth() when serverAuth != null:
return serverAuth();case ExtendedKeyUsagePurpose_ClientAuth() when clientAuth != null:
return clientAuth();case ExtendedKeyUsagePurpose_CodeSigning() when codeSigning != null:
return codeSigning();case ExtendedKeyUsagePurpose_EmailProtection() when emailProtection != null:
return emailProtection();case ExtendedKeyUsagePurpose_TimeStamping() when timeStamping != null:
return timeStamping();case ExtendedKeyUsagePurpose_OcspSigning() when ocspSigning != null:
return ocspSigning();case ExtendedKeyUsagePurpose_Other() when other != null:
return other(_that.field0);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  any,required TResult Function()  serverAuth,required TResult Function()  clientAuth,required TResult Function()  codeSigning,required TResult Function()  emailProtection,required TResult Function()  timeStamping,required TResult Function()  ocspSigning,required TResult Function( Uint64List field0)  other,}) {final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any():
return any();case ExtendedKeyUsagePurpose_ServerAuth():
return serverAuth();case ExtendedKeyUsagePurpose_ClientAuth():
return clientAuth();case ExtendedKeyUsagePurpose_CodeSigning():
return codeSigning();case ExtendedKeyUsagePurpose_EmailProtection():
return emailProtection();case ExtendedKeyUsagePurpose_TimeStamping():
return timeStamping();case ExtendedKeyUsagePurpose_OcspSigning():
return ocspSigning();case ExtendedKeyUsagePurpose_Other():
return other(_that.field0);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  any,TResult? Function()?  serverAuth,TResult? Function()?  clientAuth,TResult? Function()?  codeSigning,TResult? Function()?  emailProtection,TResult? Function()?  timeStamping,TResult? Function()?  ocspSigning,TResult? Function( Uint64List field0)?  other,}) {final _that = this;
switch (_that) {
case ExtendedKeyUsagePurpose_Any() when any != null:
return any();case ExtendedKeyUsagePurpose_ServerAuth() when serverAuth != null:
return serverAuth();case ExtendedKeyUsagePurpose_ClientAuth() when clientAuth != null:
return clientAuth();case ExtendedKeyUsagePurpose_CodeSigning() when codeSigning != null:
return codeSigning();case ExtendedKeyUsagePurpose_EmailProtection() when emailProtection != null:
return emailProtection();case ExtendedKeyUsagePurpose_TimeStamping() when timeStamping != null:
return timeStamping();case ExtendedKeyUsagePurpose_OcspSigning() when ocspSigning != null:
return ocspSigning();case ExtendedKeyUsagePurpose_Other() when other != null:
return other(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class ExtendedKeyUsagePurpose_Any extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_Any(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_Any);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.any()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_ServerAuth extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_ServerAuth(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_ServerAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.serverAuth()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_ClientAuth extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_ClientAuth(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_ClientAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.clientAuth()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_CodeSigning extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_CodeSigning(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_CodeSigning);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.codeSigning()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_EmailProtection extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_EmailProtection(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_EmailProtection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.emailProtection()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_TimeStamping extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_TimeStamping(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_TimeStamping);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.timeStamping()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_OcspSigning extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_OcspSigning(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_OcspSigning);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.ocspSigning()';
}


}




/// @nodoc


class ExtendedKeyUsagePurpose_Other extends ExtendedKeyUsagePurpose {
  const ExtendedKeyUsagePurpose_Other(this.field0): super._();
  

 final  Uint64List field0;

/// Create a copy of ExtendedKeyUsagePurpose
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtendedKeyUsagePurpose_OtherCopyWith<ExtendedKeyUsagePurpose_Other> get copyWith => _$ExtendedKeyUsagePurpose_OtherCopyWithImpl<ExtendedKeyUsagePurpose_Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtendedKeyUsagePurpose_Other&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'ExtendedKeyUsagePurpose.other(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $ExtendedKeyUsagePurpose_OtherCopyWith<$Res> implements $ExtendedKeyUsagePurposeCopyWith<$Res> {
  factory $ExtendedKeyUsagePurpose_OtherCopyWith(ExtendedKeyUsagePurpose_Other value, $Res Function(ExtendedKeyUsagePurpose_Other) _then) = _$ExtendedKeyUsagePurpose_OtherCopyWithImpl;
@useResult
$Res call({
 Uint64List field0
});




}
/// @nodoc
class _$ExtendedKeyUsagePurpose_OtherCopyWithImpl<$Res>
    implements $ExtendedKeyUsagePurpose_OtherCopyWith<$Res> {
  _$ExtendedKeyUsagePurpose_OtherCopyWithImpl(this._self, this._then);

  final ExtendedKeyUsagePurpose_Other _self;
  final $Res Function(ExtendedKeyUsagePurpose_Other) _then;

/// Create a copy of ExtendedKeyUsagePurpose
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(ExtendedKeyUsagePurpose_Other(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as Uint64List,
  ));
}


}

// dart format on
