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
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CommunityModel? get createdCommunity => throw _privateConstructorUsedError;
  List<EventModel>? get events => throw _privateConstructorUsedError;
  List<EventModel>? get organizer => throw _privateConstructorUsedError;
  List<CommunityModel>? get communities => throw _privateConstructorUsedError;
  List<String>? get favourites => throw _privateConstructorUsedError;
  List<InterestModel>? get interests => throw _privateConstructorUsedError;

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
      {String id,
      String uid,
      String? profileImage,
      String name,
      String surname,
      String username,
      String email,
      String location,
      double latitude,
      double longitude,
      String? description,
      CommunityModel? createdCommunity,
      List<EventModel>? events,
      List<EventModel>? organizer,
      List<CommunityModel>? communities,
      List<String>? favourites,
      List<InterestModel>? interests});

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
    Object? uid = null,
    Object? profileImage = freezed,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? email = null,
    Object? location = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = freezed,
    Object? createdCommunity = freezed,
    Object? events = freezed,
    Object? organizer = freezed,
    Object? communities = freezed,
    Object? favourites = freezed,
    Object? interests = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdCommunity: freezed == createdCommunity
          ? _value.createdCommunity
          : createdCommunity // ignore: cast_nullable_to_non_nullable
              as CommunityModel?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      communities: freezed == communities
          ? _value.communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityModel>?,
      favourites: freezed == favourites
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>?,
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
      {String id,
      String uid,
      String? profileImage,
      String name,
      String surname,
      String username,
      String email,
      String location,
      double latitude,
      double longitude,
      String? description,
      CommunityModel? createdCommunity,
      List<EventModel>? events,
      List<EventModel>? organizer,
      List<CommunityModel>? communities,
      List<String>? favourites,
      List<InterestModel>? interests});

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
    Object? uid = null,
    Object? profileImage = freezed,
    Object? name = null,
    Object? surname = null,
    Object? username = null,
    Object? email = null,
    Object? location = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? description = freezed,
    Object? createdCommunity = freezed,
    Object? events = freezed,
    Object? organizer = freezed,
    Object? communities = freezed,
    Object? favourites = freezed,
    Object? interests = freezed,
  }) {
    return _then(_$AppUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdCommunity: freezed == createdCommunity
          ? _value.createdCommunity
          : createdCommunity // ignore: cast_nullable_to_non_nullable
              as CommunityModel?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      organizer: freezed == organizer
          ? _value._organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      communities: freezed == communities
          ? _value._communities
          : communities // ignore: cast_nullable_to_non_nullable
              as List<CommunityModel>?,
      favourites: freezed == favourites
          ? _value._favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>?,
    ));
  }
}

/// @nodoc

class _$AppUserModelImpl extends _AppUserModel {
  const _$AppUserModelImpl(
      {required this.id,
      required this.uid,
      this.profileImage,
      required this.name,
      required this.surname,
      required this.username,
      required this.email,
      required this.location,
      required this.latitude,
      required this.longitude,
      this.description,
      this.createdCommunity,
      final List<EventModel>? events = const [],
      final List<EventModel>? organizer = const [],
      final List<CommunityModel>? communities = const [],
      final List<String>? favourites = const [],
      final List<InterestModel>? interests = const []})
      : _events = events,
        _organizer = organizer,
        _communities = communities,
        _favourites = favourites,
        _interests = interests,
        super._();

  @override
  final String id;
  @override
  final String uid;
  @override
  final String? profileImage;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String username;
  @override
  final String email;
  @override
  final String location;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? description;
  @override
  final CommunityModel? createdCommunity;
  final List<EventModel>? _events;
  @override
  @JsonKey()
  List<EventModel>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EventModel>? _organizer;
  @override
  @JsonKey()
  List<EventModel>? get organizer {
    final value = _organizer;
    if (value == null) return null;
    if (_organizer is EqualUnmodifiableListView) return _organizer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommunityModel>? _communities;
  @override
  @JsonKey()
  List<CommunityModel>? get communities {
    final value = _communities;
    if (value == null) return null;
    if (_communities is EqualUnmodifiableListView) return _communities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _favourites;
  @override
  @JsonKey()
  List<String>? get favourites {
    final value = _favourites;
    if (value == null) return null;
    if (_favourites is EqualUnmodifiableListView) return _favourites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<InterestModel>? _interests;
  @override
  @JsonKey()
  List<InterestModel>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppUserModel(id: $id, uid: $uid, profileImage: $profileImage, name: $name, surname: $surname, username: $username, email: $email, location: $location, latitude: $latitude, longitude: $longitude, description: $description, createdCommunity: $createdCommunity, events: $events, organizer: $organizer, communities: $communities, favourites: $favourites, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
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
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._organizer, _organizer) &&
            const DeepCollectionEquality()
                .equals(other._communities, _communities) &&
            const DeepCollectionEquality()
                .equals(other._favourites, _favourites) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uid,
      profileImage,
      name,
      surname,
      username,
      email,
      location,
      latitude,
      longitude,
      description,
      createdCommunity,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_organizer),
      const DeepCollectionEquality().hash(_communities),
      const DeepCollectionEquality().hash(_favourites),
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      __$$AppUserModelImplCopyWithImpl<_$AppUserModelImpl>(this, _$identity);
}

abstract class _AppUserModel extends AppUserModel {
  const factory _AppUserModel(
      {required final String id,
      required final String uid,
      final String? profileImage,
      required final String name,
      required final String surname,
      required final String username,
      required final String email,
      required final String location,
      required final double latitude,
      required final double longitude,
      final String? description,
      final CommunityModel? createdCommunity,
      final List<EventModel>? events,
      final List<EventModel>? organizer,
      final List<CommunityModel>? communities,
      final List<String>? favourites,
      final List<InterestModel>? interests}) = _$AppUserModelImpl;
  const _AppUserModel._() : super._();

  @override
  String get id;
  @override
  String get uid;
  @override
  String? get profileImage;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get username;
  @override
  String get email;
  @override
  String get location;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get description;
  @override
  CommunityModel? get createdCommunity;
  @override
  List<EventModel>? get events;
  @override
  List<EventModel>? get organizer;
  @override
  List<CommunityModel>? get communities;
  @override
  List<String>? get favourites;
  @override
  List<InterestModel>? get interests;
  @override
  @JsonKey(ignore: true)
  _$$AppUserModelImplCopyWith<_$AppUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
