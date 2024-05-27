// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get owner => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<AppUserModel>? get members => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<EventModel>? get events => throw _privateConstructorUsedError;
  CategoryModel get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityModelCopyWith<CommunityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityModelCopyWith<$Res> {
  factory $CommunityModelCopyWith(
          CommunityModel value, $Res Function(CommunityModel) then) =
      _$CommunityModelCopyWithImpl<$Res, CommunityModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel owner,
      String image,
      String name,
      List<AppUserModel>? members,
      String city,
      String description,
      List<EventModel>? events,
      CategoryModel category});

  $AppUserModelCopyWith<$Res> get owner;
  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$CommunityModelCopyWithImpl<$Res, $Val extends CommunityModel>
    implements $CommunityModelCopyWith<$Res> {
  _$CommunityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? image = null,
    Object? name = null,
    Object? members = freezed,
    Object? city = null,
    Object? description = null,
    Object? events = freezed,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get owner {
    return $AppUserModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityModelImplCopyWith<$Res>
    implements $CommunityModelCopyWith<$Res> {
  factory _$$CommunityModelImplCopyWith(_$CommunityModelImpl value,
          $Res Function(_$CommunityModelImpl) then) =
      __$$CommunityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel owner,
      String image,
      String name,
      List<AppUserModel>? members,
      String city,
      String description,
      List<EventModel>? events,
      CategoryModel category});

  @override
  $AppUserModelCopyWith<$Res> get owner;
  @override
  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$CommunityModelImplCopyWithImpl<$Res>
    extends _$CommunityModelCopyWithImpl<$Res, _$CommunityModelImpl>
    implements _$$CommunityModelImplCopyWith<$Res> {
  __$$CommunityModelImplCopyWithImpl(
      _$CommunityModelImpl _value, $Res Function(_$CommunityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? image = null,
    Object? name = null,
    Object? members = freezed,
    Object? city = null,
    Object? description = null,
    Object? events = freezed,
    Object? category = null,
  }) {
    return _then(_$CommunityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$CommunityModelImpl extends _CommunityModel {
  const _$CommunityModelImpl(
      {required this.id,
      required this.owner,
      required this.image,
      required this.name,
      final List<AppUserModel>? members = const [],
      required this.city,
      required this.description,
      final List<EventModel>? events = const [],
      required this.category})
      : _members = members,
        _events = events,
        super._();

  @override
  final String id;
  @override
  final AppUserModel owner;
  @override
  final String image;
  @override
  final String name;
  final List<AppUserModel>? _members;
  @override
  @JsonKey()
  List<AppUserModel>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String city;
  @override
  final String description;
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

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CommunityModel(id: $id, owner: $owner, image: $image, name: $name, members: $members, city: $city, description: $description, events: $events, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      owner,
      image,
      name,
      const DeepCollectionEquality().hash(_members),
      city,
      description,
      const DeepCollectionEquality().hash(_events),
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityModelImplCopyWith<_$CommunityModelImpl> get copyWith =>
      __$$CommunityModelImplCopyWithImpl<_$CommunityModelImpl>(
          this, _$identity);
}

abstract class _CommunityModel extends CommunityModel {
  const factory _CommunityModel(
      {required final String id,
      required final AppUserModel owner,
      required final String image,
      required final String name,
      final List<AppUserModel>? members,
      required final String city,
      required final String description,
      final List<EventModel>? events,
      required final CategoryModel category}) = _$CommunityModelImpl;
  const _CommunityModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get owner;
  @override
  String get image;
  @override
  String get name;
  @override
  List<AppUserModel>? get members;
  @override
  String get city;
  @override
  String get description;
  @override
  List<EventModel>? get events;
  @override
  CategoryModel get category;
  @override
  @JsonKey(ignore: true)
  _$$CommunityModelImplCopyWith<_$CommunityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
