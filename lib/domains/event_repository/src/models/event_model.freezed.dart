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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get completeAddress => throw _privateConstructorUsedError;
  CommunityModel get community => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get priceWithoutDiscount => throw _privateConstructorUsedError;
  List<AppUserModel>? get organizers => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  List<CommentModel>? get comments => throw _privateConstructorUsedError;
  List<AppUserModel>? get participants => throw _privateConstructorUsedError;
  EventType get eventType => throw _privateConstructorUsedError;
  bool get popular => throw _privateConstructorUsedError;
  List<HighlightModel>? get highlights => throw _privateConstructorUsedError;
  List<String> get reports => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get endDate => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String description,
      String image,
      String placeName,
      String completeAddress,
      CommunityModel community,
      int? price,
      int? priceWithoutDiscount,
      List<AppUserModel>? organizers,
      double latitude,
      double longitude,
      List<CommentModel>? comments,
      List<AppUserModel>? participants,
      EventType eventType,
      bool popular,
      List<HighlightModel>? highlights,
      List<String> reports,
      @TimestampConverter() DateTime startDate,
      @TimestampConverter() DateTime endDate});

  $CommunityModelCopyWith<$Res> get community;
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
    Object? description = null,
    Object? image = null,
    Object? placeName = null,
    Object? completeAddress = null,
    Object? community = null,
    Object? price = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? organizers = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? comments = freezed,
    Object? participants = freezed,
    Object? eventType = null,
    Object? popular = null,
    Object? highlights = freezed,
    Object? reports = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityModel,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceWithoutDiscount: freezed == priceWithoutDiscount
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      organizers: freezed == organizers
          ? _value.organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      highlights: freezed == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<HighlightModel>?,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityModelCopyWith<$Res> get community {
    return $CommunityModelCopyWith<$Res>(_value.community, (value) {
      return _then(_value.copyWith(community: value) as $Val);
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
      {String id,
      String name,
      String description,
      String image,
      String placeName,
      String completeAddress,
      CommunityModel community,
      int? price,
      int? priceWithoutDiscount,
      List<AppUserModel>? organizers,
      double latitude,
      double longitude,
      List<CommentModel>? comments,
      List<AppUserModel>? participants,
      EventType eventType,
      bool popular,
      List<HighlightModel>? highlights,
      List<String> reports,
      @TimestampConverter() DateTime startDate,
      @TimestampConverter() DateTime endDate});

  @override
  $CommunityModelCopyWith<$Res> get community;
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
    Object? description = null,
    Object? image = null,
    Object? placeName = null,
    Object? completeAddress = null,
    Object? community = null,
    Object? price = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? organizers = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? comments = freezed,
    Object? participants = freezed,
    Object? eventType = null,
    Object? popular = null,
    Object? highlights = freezed,
    Object? reports = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      completeAddress: null == completeAddress
          ? _value.completeAddress
          : completeAddress // ignore: cast_nullable_to_non_nullable
              as String,
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityModel,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceWithoutDiscount: freezed == priceWithoutDiscount
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      organizers: freezed == organizers
          ? _value._organizers
          : organizers // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<AppUserModel>?,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      highlights: freezed == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<HighlightModel>?,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EventModelImpl extends _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.placeName,
      required this.completeAddress,
      required this.community,
      this.price,
      this.priceWithoutDiscount,
      final List<AppUserModel>? organizers = const [],
      required this.latitude,
      required this.longitude,
      final List<CommentModel>? comments = const [],
      final List<AppUserModel>? participants = const [],
      required this.eventType,
      this.popular = false,
      final List<HighlightModel>? highlights = const [],
      required final List<String> reports,
      @TimestampConverter() required this.startDate,
      @TimestampConverter() required this.endDate})
      : _organizers = organizers,
        _comments = comments,
        _participants = participants,
        _highlights = highlights,
        _reports = reports,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final String placeName;
  @override
  final String completeAddress;
  @override
  final CommunityModel community;
  @override
  final int? price;
  @override
  final int? priceWithoutDiscount;
  final List<AppUserModel>? _organizers;
  @override
  @JsonKey()
  List<AppUserModel>? get organizers {
    final value = _organizers;
    if (value == null) return null;
    if (_organizers is EqualUnmodifiableListView) return _organizers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double latitude;
  @override
  final double longitude;
  final List<CommentModel>? _comments;
  @override
  @JsonKey()
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AppUserModel>? _participants;
  @override
  @JsonKey()
  List<AppUserModel>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EventType eventType;
  @override
  @JsonKey()
  final bool popular;
  final List<HighlightModel>? _highlights;
  @override
  @JsonKey()
  List<HighlightModel>? get highlights {
    final value = _highlights;
    if (value == null) return null;
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _reports;
  @override
  List<String> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  @TimestampConverter()
  final DateTime startDate;
  @override
  @TimestampConverter()
  final DateTime endDate;

  @override
  String toString() {
    return 'EventModel(id: $id, name: $name, description: $description, image: $image, placeName: $placeName, completeAddress: $completeAddress, community: $community, price: $price, priceWithoutDiscount: $priceWithoutDiscount, organizers: $organizers, latitude: $latitude, longitude: $longitude, comments: $comments, participants: $participants, eventType: $eventType, popular: $popular, highlights: $highlights, reports: $reports, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.completeAddress, completeAddress) ||
                other.completeAddress == completeAddress) &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceWithoutDiscount, priceWithoutDiscount) ||
                other.priceWithoutDiscount == priceWithoutDiscount) &&
            const DeepCollectionEquality()
                .equals(other._organizers, _organizers) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        image,
        placeName,
        completeAddress,
        community,
        price,
        priceWithoutDiscount,
        const DeepCollectionEquality().hash(_organizers),
        latitude,
        longitude,
        const DeepCollectionEquality().hash(_comments),
        const DeepCollectionEquality().hash(_participants),
        eventType,
        popular,
        const DeepCollectionEquality().hash(_highlights),
        const DeepCollectionEquality().hash(_reports),
        startDate,
        endDate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
          {required final String id,
          required final String name,
          required final String description,
          required final String image,
          required final String placeName,
          required final String completeAddress,
          required final CommunityModel community,
          final int? price,
          final int? priceWithoutDiscount,
          final List<AppUserModel>? organizers,
          required final double latitude,
          required final double longitude,
          final List<CommentModel>? comments,
          final List<AppUserModel>? participants,
          required final EventType eventType,
          final bool popular,
          final List<HighlightModel>? highlights,
          required final List<String> reports,
          @TimestampConverter() required final DateTime startDate,
          @TimestampConverter() required final DateTime endDate}) =
      _$EventModelImpl;
  const _EventModel._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get placeName;
  @override
  String get completeAddress;
  @override
  CommunityModel get community;
  @override
  int? get price;
  @override
  int? get priceWithoutDiscount;
  @override
  List<AppUserModel>? get organizers;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  List<CommentModel>? get comments;
  @override
  List<AppUserModel>? get participants;
  @override
  EventType get eventType;
  @override
  bool get popular;
  @override
  List<HighlightModel>? get highlights;
  @override
  List<String> get reports;
  @override
  @TimestampConverter()
  DateTime get startDate;
  @override
  @TimestampConverter()
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
