// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get horizontalImage => throw _privateConstructorUsedError;
  String get verticalImage => throw _privateConstructorUsedError;
  bool get favourite => throw _privateConstructorUsedError;
  bool get joined => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get startTimestamp => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get endTimestamp => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get completeAddress => throw _privateConstructorUsedError;
  AppUserModel get owner => throw _privateConstructorUsedError;
  int get communityId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int? get priceWithoutDiscount => throw _privateConstructorUsedError;
  String get communityImage => throw _privateConstructorUsedError;
  String get communityName => throw _privateConstructorUsedError;
  List<AppUserModel> get organizers => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  List<AppUserModel> get participants => throw _privateConstructorUsedError;
  EventType get eventType => throw _privateConstructorUsedError;
  bool? get popular => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String horizontalImage,
      String verticalImage,
      bool favourite,
      bool joined,
      @TimestampConverter() DateTime startTimestamp,
      @TimestampConverter() DateTime endTimestamp,
      String placeName,
      String completeAddress,
      AppUserModel owner,
      int communityId,
      int price,
      int? priceWithoutDiscount,
      String communityImage,
      String communityName,
      List<AppUserModel> organizers,
      double latitude,
      double longitude,
      List<String> photos,
      List<CommentModel> comments,
      List<AppUserModel> participants,
      EventType eventType,
      bool? popular});

  $AppUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? horizontalImage = null,
    Object? verticalImage = null,
    Object? favourite = null,
    Object? joined = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? placeName = null,
    Object? completeAddress = null,
    Object? owner = null,
    Object? communityId = null,
    Object? price = null,
    Object? priceWithoutDiscount = freezed,
    Object? communityImage = null,
    Object? communityName = null,
    Object? organizers = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? photos = null,
    Object? comments = null,
    Object? participants = null,
    Object? eventType = null,
    Object? popular = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      horizontalImage: null == horizontalImage
          ? _value.horizontalImage
          : horizontalImage // ignore: cast_nullable_to_non_nullable
              as String,
      verticalImage: null == verticalImage
          ? _value.verticalImage
          : verticalImage // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceWithoutDiscount: freezed == priceWithoutDiscount
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      communityImage: null == communityImage
          ? _value.communityImage
          : communityImage // ignore: cast_nullable_to_non_nullable
              as String,
      communityName: null == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String,
      organizers: null == organizers
          ? _value.organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get owner {
    return $AppUserModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String horizontalImage,
      String verticalImage,
      bool favourite,
      bool joined,
      @TimestampConverter() DateTime startTimestamp,
      @TimestampConverter() DateTime endTimestamp,
      String placeName,
      String completeAddress,
      AppUserModel owner,
      int communityId,
      int price,
      int? priceWithoutDiscount,
      String communityImage,
      String communityName,
      List<AppUserModel> organizers,
      double latitude,
      double longitude,
      List<String> photos,
      List<CommentModel> comments,
      List<AppUserModel> participants,
      EventType eventType,
      bool? popular});

  @override
  $AppUserModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? horizontalImage = null,
    Object? verticalImage = null,
    Object? favourite = null,
    Object? joined = null,
    Object? startTimestamp = null,
    Object? endTimestamp = null,
    Object? placeName = null,
    Object? completeAddress = null,
    Object? owner = null,
    Object? communityId = null,
    Object? price = null,
    Object? priceWithoutDiscount = freezed,
    Object? communityImage = null,
    Object? communityName = null,
    Object? organizers = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? photos = null,
    Object? comments = null,
    Object? participants = null,
    Object? eventType = null,
    Object? popular = freezed,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      horizontalImage: null == horizontalImage
          ? _value.horizontalImage
          : horizontalImage // ignore: cast_nullable_to_non_nullable
              as String,
      verticalImage: null == verticalImage
          ? _value.verticalImage
          : verticalImage // ignore: cast_nullable_to_non_nullable
              as String,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool,
      startTimestamp: null == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTimestamp: null == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceWithoutDiscount: freezed == priceWithoutDiscount
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      communityImage: null == communityImage
          ? _value.communityImage
          : communityImage // ignore: cast_nullable_to_non_nullable
              as String,
      communityName: null == communityName
          ? _value.communityName
          : communityName // ignore: cast_nullable_to_non_nullable
              as String,
      organizers: null == organizers
          ? _value._organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      popular: freezed == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$EventModelImpl extends _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.name,
      required this.horizontalImage,
      required this.verticalImage,
      required this.favourite,
      required this.joined,
      @TimestampConverter() required this.startTimestamp,
      @TimestampConverter() required this.endTimestamp,
      required this.placeName,
      required this.completeAddress,
      required this.owner,
      required this.communityId,
      required this.price,
      this.priceWithoutDiscount,
      required this.communityImage,
      required this.communityName,
      required final List<AppUserModel> organizers,
      required this.latitude,
      required this.longitude,
      required final List<String> photos,
      required final List<CommentModel> comments,
      required final List<AppUserModel> participants,
      required this.eventType,
      this.popular = false})
      : _organizers = organizers,
        _photos = photos,
        _comments = comments,
        _participants = participants,
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String horizontalImage;
  @override
  final String verticalImage;
  @override
  final bool favourite;
  @override
  final bool joined;
  @override
  @TimestampConverter()
  final DateTime startTimestamp;
  @override
  @TimestampConverter()
  final DateTime endTimestamp;
  @override
  final String placeName;
  @override
  final String completeAddress;
  @override
  final AppUserModel owner;
  @override
  final int communityId;
  @override
  final int price;
  @override
  final int? priceWithoutDiscount;
  @override
  final String communityImage;
  @override
  final String communityName;
  final List<AppUserModel> _organizers;
  @override
  List<AppUserModel> get organizers {
    if (_organizers is EqualUnmodifiableListView) return _organizers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizers);
  }

  @override
  final double latitude;
  @override
  final double longitude;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<AppUserModel> _participants;
  @override
  List<AppUserModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final EventType eventType;
  @override
  @JsonKey()
  final bool? popular;

  @override
  String toString() {
    return 'EventModel(id: $id, name: $name, horizontalImage: $horizontalImage, verticalImage: $verticalImage, favourite: $favourite, joined: $joined, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, placeName: $placeName, completeAddress: $completeAddress, owner: $owner, communityId: $communityId, price: $price, priceWithoutDiscount: $priceWithoutDiscount, communityImage: $communityImage, communityName: $communityName, organizers: $organizers, latitude: $latitude, longitude: $longitude, photos: $photos, comments: $comments, participants: $participants, eventType: $eventType, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.horizontalImage, horizontalImage) ||
                other.horizontalImage == horizontalImage) &&
            (identical(other.verticalImage, verticalImage) ||
                other.verticalImage == verticalImage) &&
            (identical(other.favourite, favourite) ||
                other.favourite == favourite) &&
            (identical(other.joined, joined) || other.joined == joined) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.completeAddress, completeAddress) ||
                other.completeAddress == completeAddress) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceWithoutDiscount, priceWithoutDiscount) ||
                other.priceWithoutDiscount == priceWithoutDiscount) &&
            (identical(other.communityImage, communityImage) ||
                other.communityImage == communityImage) &&
            (identical(other.communityName, communityName) ||
                other.communityName == communityName) &&
            const DeepCollectionEquality()
                .equals(other._organizers, _organizers) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        horizontalImage,
        verticalImage,
        favourite,
        joined,
        startTimestamp,
        endTimestamp,
        placeName,
        completeAddress,
        owner,
        communityId,
        price,
        priceWithoutDiscount,
        communityImage,
        communityName,
        const DeepCollectionEquality().hash(_organizers),
        latitude,
        longitude,
        const DeepCollectionEquality().hash(_photos),
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_participants),
        eventType,
        popular
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
      {required final int id,
      required final String name,
      required final String horizontalImage,
      required final String verticalImage,
      required final bool favourite,
      required final bool joined,
      @TimestampConverter() required final DateTime startTimestamp,
      @TimestampConverter() required final DateTime endTimestamp,
      required final String placeName,
      required final String completeAddress,
      required final AppUserModel owner,
      required final int communityId,
      required final int price,
      final int? priceWithoutDiscount,
      required final String communityImage,
      required final String communityName,
      required final List<AppUserModel> organizers,
      required final double latitude,
      required final double longitude,
      required final List<String> photos,
      required final List<CommentModel> comments,
      required final List<AppUserModel> participants,
      required final EventType eventType,
      final bool? popular}) = _$EventModelImpl;
  const _EventModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get horizontalImage;
  @override
  String get verticalImage;
  @override
  bool get favourite;
  @override
  bool get joined;
  @override
  @TimestampConverter()
  DateTime get startTimestamp;
  @override
  @TimestampConverter()
  DateTime get endTimestamp;
  @override
  String get placeName;
  @override
  String get completeAddress;
  @override
  AppUserModel get owner;
  @override
  int get communityId;
  @override
  int get price;
  @override
  int? get priceWithoutDiscount;
  @override
  String get communityImage;
  @override
  String get communityName;
  @override
  List<AppUserModel> get organizers;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  List<String> get photos;
  @override
  List<CommentModel> get comments;
  @override
  List<AppUserModel> get participants;
  @override
  EventType get eventType;
  @override
  bool? get popular;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
