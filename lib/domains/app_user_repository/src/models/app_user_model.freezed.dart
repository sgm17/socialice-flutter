// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppUserModel {
  int get id => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CommunityModel? get createdCommunity => throw _privateConstructorUsedError;
  List<CommunityModel> get joinedCommunities =>
      throw _privateConstructorUsedError;
  List<InterestModel> get interests => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserModelCopyWith<AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res, AppUserModel>;
  @useResult
  $Res call(
      {int id,
      String profileImage,
      String name,
      String surname,
      String username,
      String location,
      double latitude,
      double longitude,
      String description,
      CommunityModel? createdCommunity,
      List<CommunityModel> joinedCommunities,
      List<InterestModel> interests});

  $CommunityModelCopyWith<$Res>? get createdCommunity;
}

/// @nodoc
class _$AppUserModelCopyWithImpl<$Res, $Val extends AppUserModel>
    implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileImage = null,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? location = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = null,
    Object? createdCommunity = freezed,
    Object? joinedCommunities = null,
    Object? interests = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdCommunity: freezed == createdCommunity
          ? _value.createdCommunity
          : createdCommunity // ignore: cast_nullable_to_non_nullable
              as CommunityModel?,
      joinedCommunities: null == joinedCommunities
          ? _value.joinedCommunities
          : joinedCommunities // ignore: cast_nullable_to_non_nullable
              as List<CommunityModel>,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityModelCopyWith<$Res>? get createdCommunity {
    if (_value.createdCommunity == null) {
      return null;
    }

    return $CommunityModelCopyWith<$Res>(_value.createdCommunity!, (value) {
      return _then(_value.copyWith(createdCommunity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUserModelImplCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$$AppUserModelImplCopyWith(
          _$AppUserModelImpl value, $Res Function(_$AppUserModelImpl) then) =
      __$$AppUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String profileImage,
      String name,
      String surname,
      String username,
      String location,
      double latitude,
      double longitude,
      String description,
      CommunityModel? createdCommunity,
      List<CommunityModel> joinedCommunities,
      List<InterestModel> interests});

  @override
  $CommunityModelCopyWith<$Res>? get createdCommunity;
}

/// @nodoc
class __$$AppUserModelImplCopyWithImpl<$Res>
    extends _$AppUserModelCopyWithImpl<$Res, _$AppUserModelImpl>
    implements _$$AppUserModelImplCopyWith<$Res> {
  __$$AppUserModelImplCopyWithImpl(
      _$AppUserModelImpl _value, $Res Function(_$AppUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileImage = null,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? location = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = null,
    Object? createdCommunity = freezed,
    Object? joinedCommunities = null,
    Object? interests = null,
  }) {
    return _then(_$AppUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdCommunity: freezed == createdCommunity
          ? _value.createdCommunity
          : createdCommunity // ignore: cast_nullable_to_non_nullable
              as CommunityModel?,
      joinedCommunities: null == joinedCommunities
          ? _value._joinedCommunities
          : joinedCommunities // ignore: cast_nullable_to_non_nullable
              as List<CommunityModel>,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
    ));
  }
}

/// @nodoc

class _$AppUserModelImpl extends _AppUserModel {
  const _$AppUserModelImpl(
      {required this.id,
      required this.profileImage,
      required this.name,
      required this.surname,
      required this.username,
      required this.location,
      required this.latitude,
      required this.longitude,
      required this.description,
      this.createdCommunity,
      required final List<CommunityModel> joinedCommunities,
      required final List<InterestModel> interests})
      : _joinedCommunities = joinedCommunities,
        _interests = interests,
        super._();

  @override
  final int id;
  @override
  final String profileImage;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String username;
  @override
  final String location;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String description;
  @override
  final CommunityModel? createdCommunity;
  final List<CommunityModel> _joinedCommunities;
  @override
  List<CommunityModel> get joinedCommunities {
    if (_joinedCommunities is EqualUnmodifiableListView)
      return _joinedCommunities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinedCommunities);
  }

  final List<InterestModel> _interests;
  @override
  List<InterestModel> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  String toString() {
    return 'AppUserModel(id: $id, profileImage: $profileImage, name: $name, surname: $surname, username: $username, location: $location, latitude: $latitude, longitude: $longitude, description: $description, createdCommunity: $createdCommunity, joinedCommunities: $joinedCommunities, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdCommunity, createdCommunity) ||
                other.createdCommunity == createdCommunity) &&
            const DeepCollectionEquality()
                .equals(other._joinedCommunities, _joinedCommunities) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profileImage,
      name,
      surname,
      username,
      location,
      latitude,
      longitude,
      description,
      createdCommunity,
      const DeepCollectionEquality().hash(_joinedCommunities),
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      __$$AppUserModelImplCopyWithImpl<_$AppUserModelImpl>(this, _$identity);
}

abstract class _AppUserModel extends AppUserModel {
  const factory _AppUserModel(
      {required final int id,
      required final String profileImage,
      required final String name,
      required final String surname,
      required final String username,
      required final String location,
      required final double latitude,
      required final double longitude,
      required final String description,
      final CommunityModel? createdCommunity,
      required final List<CommunityModel> joinedCommunities,
      required final List<InterestModel> interests}) = _$AppUserModelImpl;
  const _AppUserModel._() : super._();

  @override
  int get id;
  @override
  String get profileImage;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get username;
  @override
  String get location;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get description;
  @override
  CommunityModel? get createdCommunity;
  @override
  List<CommunityModel> get joinedCommunities;
  @override
  List<InterestModel> get interests;
  @override
  @JsonKey(ignore: true)
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
