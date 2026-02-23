// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dn_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DnType {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType()';
}


}

/// @nodoc
class $DnTypeCopyWith<$Res>  {
$DnTypeCopyWith(DnType _, $Res Function(DnType) __);
}


/// Adds pattern-matching-related methods to [DnType].
extension DnTypePatterns on DnType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DnType_CountryName value)?  countryName,TResult Function( DnType_LocalityName value)?  localityName,TResult Function( DnType_StateOrProvinceName value)?  stateOrProvinceName,TResult Function( DnType_OrganizationName value)?  organizationName,TResult Function( DnType_OrganizationalUnitName value)?  organizationalUnitName,TResult Function( DnType_CommonName value)?  commonName,TResult Function( DnType_CustomDnType value)?  customDnType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DnType_CountryName() when countryName != null:
return countryName(_that);case DnType_LocalityName() when localityName != null:
return localityName(_that);case DnType_StateOrProvinceName() when stateOrProvinceName != null:
return stateOrProvinceName(_that);case DnType_OrganizationName() when organizationName != null:
return organizationName(_that);case DnType_OrganizationalUnitName() when organizationalUnitName != null:
return organizationalUnitName(_that);case DnType_CommonName() when commonName != null:
return commonName(_that);case DnType_CustomDnType() when customDnType != null:
return customDnType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DnType_CountryName value)  countryName,required TResult Function( DnType_LocalityName value)  localityName,required TResult Function( DnType_StateOrProvinceName value)  stateOrProvinceName,required TResult Function( DnType_OrganizationName value)  organizationName,required TResult Function( DnType_OrganizationalUnitName value)  organizationalUnitName,required TResult Function( DnType_CommonName value)  commonName,required TResult Function( DnType_CustomDnType value)  customDnType,}){
final _that = this;
switch (_that) {
case DnType_CountryName():
return countryName(_that);case DnType_LocalityName():
return localityName(_that);case DnType_StateOrProvinceName():
return stateOrProvinceName(_that);case DnType_OrganizationName():
return organizationName(_that);case DnType_OrganizationalUnitName():
return organizationalUnitName(_that);case DnType_CommonName():
return commonName(_that);case DnType_CustomDnType():
return customDnType(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DnType_CountryName value)?  countryName,TResult? Function( DnType_LocalityName value)?  localityName,TResult? Function( DnType_StateOrProvinceName value)?  stateOrProvinceName,TResult? Function( DnType_OrganizationName value)?  organizationName,TResult? Function( DnType_OrganizationalUnitName value)?  organizationalUnitName,TResult? Function( DnType_CommonName value)?  commonName,TResult? Function( DnType_CustomDnType value)?  customDnType,}){
final _that = this;
switch (_that) {
case DnType_CountryName() when countryName != null:
return countryName(_that);case DnType_LocalityName() when localityName != null:
return localityName(_that);case DnType_StateOrProvinceName() when stateOrProvinceName != null:
return stateOrProvinceName(_that);case DnType_OrganizationName() when organizationName != null:
return organizationName(_that);case DnType_OrganizationalUnitName() when organizationalUnitName != null:
return organizationalUnitName(_that);case DnType_CommonName() when commonName != null:
return commonName(_that);case DnType_CustomDnType() when customDnType != null:
return customDnType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  countryName,TResult Function()?  localityName,TResult Function()?  stateOrProvinceName,TResult Function()?  organizationName,TResult Function()?  organizationalUnitName,TResult Function()?  commonName,TResult Function( Uint64List field0)?  customDnType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DnType_CountryName() when countryName != null:
return countryName();case DnType_LocalityName() when localityName != null:
return localityName();case DnType_StateOrProvinceName() when stateOrProvinceName != null:
return stateOrProvinceName();case DnType_OrganizationName() when organizationName != null:
return organizationName();case DnType_OrganizationalUnitName() when organizationalUnitName != null:
return organizationalUnitName();case DnType_CommonName() when commonName != null:
return commonName();case DnType_CustomDnType() when customDnType != null:
return customDnType(_that.field0);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  countryName,required TResult Function()  localityName,required TResult Function()  stateOrProvinceName,required TResult Function()  organizationName,required TResult Function()  organizationalUnitName,required TResult Function()  commonName,required TResult Function( Uint64List field0)  customDnType,}) {final _that = this;
switch (_that) {
case DnType_CountryName():
return countryName();case DnType_LocalityName():
return localityName();case DnType_StateOrProvinceName():
return stateOrProvinceName();case DnType_OrganizationName():
return organizationName();case DnType_OrganizationalUnitName():
return organizationalUnitName();case DnType_CommonName():
return commonName();case DnType_CustomDnType():
return customDnType(_that.field0);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  countryName,TResult? Function()?  localityName,TResult? Function()?  stateOrProvinceName,TResult? Function()?  organizationName,TResult? Function()?  organizationalUnitName,TResult? Function()?  commonName,TResult? Function( Uint64List field0)?  customDnType,}) {final _that = this;
switch (_that) {
case DnType_CountryName() when countryName != null:
return countryName();case DnType_LocalityName() when localityName != null:
return localityName();case DnType_StateOrProvinceName() when stateOrProvinceName != null:
return stateOrProvinceName();case DnType_OrganizationName() when organizationName != null:
return organizationName();case DnType_OrganizationalUnitName() when organizationalUnitName != null:
return organizationalUnitName();case DnType_CommonName() when commonName != null:
return commonName();case DnType_CustomDnType() when customDnType != null:
return customDnType(_that.field0);case _:
  return null;

}
}

}

/// @nodoc


class DnType_CountryName extends DnType {
  const DnType_CountryName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_CountryName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.countryName()';
}


}




/// @nodoc


class DnType_LocalityName extends DnType {
  const DnType_LocalityName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_LocalityName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.localityName()';
}


}




/// @nodoc


class DnType_StateOrProvinceName extends DnType {
  const DnType_StateOrProvinceName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_StateOrProvinceName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.stateOrProvinceName()';
}


}




/// @nodoc


class DnType_OrganizationName extends DnType {
  const DnType_OrganizationName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_OrganizationName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.organizationName()';
}


}




/// @nodoc


class DnType_OrganizationalUnitName extends DnType {
  const DnType_OrganizationalUnitName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_OrganizationalUnitName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.organizationalUnitName()';
}


}




/// @nodoc


class DnType_CommonName extends DnType {
  const DnType_CommonName(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_CommonName);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DnType.commonName()';
}


}




/// @nodoc


class DnType_CustomDnType extends DnType {
  const DnType_CustomDnType(this.field0): super._();
  

 final  Uint64List field0;

/// Create a copy of DnType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DnType_CustomDnTypeCopyWith<DnType_CustomDnType> get copyWith => _$DnType_CustomDnTypeCopyWithImpl<DnType_CustomDnType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DnType_CustomDnType&&const DeepCollectionEquality().equals(other.field0, field0));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(field0));

@override
String toString() {
  return 'DnType.customDnType(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $DnType_CustomDnTypeCopyWith<$Res> implements $DnTypeCopyWith<$Res> {
  factory $DnType_CustomDnTypeCopyWith(DnType_CustomDnType value, $Res Function(DnType_CustomDnType) _then) = _$DnType_CustomDnTypeCopyWithImpl;
@useResult
$Res call({
 Uint64List field0
});




}
/// @nodoc
class _$DnType_CustomDnTypeCopyWithImpl<$Res>
    implements $DnType_CustomDnTypeCopyWith<$Res> {
  _$DnType_CustomDnTypeCopyWithImpl(this._self, this._then);

  final DnType_CustomDnType _self;
  final $Res Function(DnType_CustomDnType) _then;

/// Create a copy of DnType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(DnType_CustomDnType(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as Uint64List,
  ));
}


}

// dart format on
