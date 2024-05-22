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
  int get id => throw _privateConstructorUsedError;
  AppUserModel get owner => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get totalMembers => throw _privateConstructorUsedError;
  List<AppUserModel> get lastEightMembers => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<EventModel> get futureEvents => throw _privateConstructorUsedError;
  List<HighlightedMomentModel> get pastEvents =>
      throw _privateConstructorUsedError;
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
      {int id,
      AppUserModel owner,
      String image,
      String name,
      String city,
      int totalMembers,
      List<AppUserModel> lastEightMembers,
      String description,
      List<EventModel> futureEvents,
      List<HighlightedMomentModel> pastEvents,
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
    Object? city = null,
    Object? totalMembers = null,
    Object? lastEightMembers = null,
    Object? description = null,
    Object? futureEvents = null,
    Object? pastEvents = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      lastEightMembers: null == lastEightMembers
          ? _value.lastEightMembers
          : lastEightMembers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      futureEvents: null == futureEvents
          ? _value.futureEvents
          : futureEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      pastEvents: null == pastEvents
          ? _value.pastEvents
          : pastEvents // ignore: cast_nullable_to_non_nullable
              as List<HighlightedMomentModel>,
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
      {int id,
      AppUserModel owner,
      String image,
      String name,
      String city,
      int totalMembers,
      List<AppUserModel> lastEightMembers,
      String description,
      List<EventModel> futureEvents,
      List<HighlightedMomentModel> pastEvents,
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
    Object? city = null,
    Object? totalMembers = null,
    Object? lastEightMembers = null,
    Object? description = null,
    Object? futureEvents = null,
    Object? pastEvents = null,
    Object? category = null,
  }) {
    return _then(_$CommunityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      totalMembers: null == totalMembers
          ? _value.totalMembers
          : totalMembers // ignore: cast_nullable_to_non_nullable
              as int,
      lastEightMembers: null == lastEightMembers
          ? _value._lastEightMembers
          : lastEightMembers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      futureEvents: null == futureEvents
          ? _value._futureEvents
          : futureEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      pastEvents: null == pastEvents
          ? _value._pastEvents
          : pastEvents // ignore: cast_nullable_to_non_nullable
              as List<HighlightedMomentModel>,
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
      required this.city,
      required this.totalMembers,
      required final List<AppUserModel> lastEightMembers,
      required this.description,
      required final List<EventModel> futureEvents,
      required final List<HighlightedMomentModel> pastEvents,
      required this.category})
      : _lastEightMembers = lastEightMembers,
        _futureEvents = futureEvents,
        _pastEvents = pastEvents,
        super._();

  @override
  final int id;
  @override
  final AppUserModel owner;
  @override
  final String image;
  @override
  final String name;
  @override
  final String city;
  @override
  final int totalMembers;
  final List<AppUserModel> _lastEightMembers;
  @override
  List<AppUserModel> get lastEightMembers {
    if (_lastEightMembers is EqualUnmodifiableListView)
      return _lastEightMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastEightMembers);
  }

  @override
  final String description;
  final List<EventModel> _futureEvents;
  @override
  List<EventModel> get futureEvents {
    if (_futureEvents is EqualUnmodifiableListView) return _futureEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_futureEvents);
  }

  final List<HighlightedMomentModel> _pastEvents;
  @override
  List<HighlightedMomentModel> get pastEvents {
    if (_pastEvents is EqualUnmodifiableListView) return _pastEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastEvents);
  }

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CommunityModel(id: $id, owner: $owner, image: $image, name: $name, city: $city, totalMembers: $totalMembers, lastEightMembers: $lastEightMembers, description: $description, futureEvents: $futureEvents, pastEvents: $pastEvents, category: $category)';
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
            (identical(other.city, city) || other.city == city) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            const DeepCollectionEquality()
                .equals(other._lastEightMembers, _lastEightMembers) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._futureEvents, _futureEvents) &&
            const DeepCollectionEquality()
                .equals(other._pastEvents, _pastEvents) &&
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
      city,
      totalMembers,
      const DeepCollectionEquality().hash(_lastEightMembers),
      description,
      const DeepCollectionEquality().hash(_futureEvents),
      const DeepCollectionEquality().hash(_pastEvents),
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
      {required final int id,
      required final AppUserModel owner,
      required final String image,
      required final String name,
      required final String city,
      required final int totalMembers,
      required final List<AppUserModel> lastEightMembers,
      required final String description,
      required final List<EventModel> futureEvents,
      required final List<HighlightedMomentModel> pastEvents,
      required final CategoryModel category}) = _$CommunityModelImpl;
  const _CommunityModel._() : super._();

  @override
  int get id;
  @override
  AppUserModel get owner;
  @override
  String get image;
  @override
  String get name;
  @override
  String get city;
  @override
  int get totalMembers;
  @override
  List<AppUserModel> get lastEightMembers;
  @override
  String get description;
  @override
  List<EventModel> get futureEvents;
  @override
  List<HighlightedMomentModel> get pastEvents;
  @override
  CategoryModel get category;
  @override
  @JsonKey(ignore: true)
  _$$CommunityModelImplCopyWith<_$CommunityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
