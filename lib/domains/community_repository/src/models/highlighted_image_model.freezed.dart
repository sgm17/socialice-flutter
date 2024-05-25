// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlighted_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HighlightedImageModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get user => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightedImageModelCopyWith<HighlightedImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightedImageModelCopyWith<$Res> {
  factory $HighlightedImageModelCopyWith(HighlightedImageModel value,
          $Res Function(HighlightedImageModel) then) =
      _$HighlightedImageModelCopyWithImpl<$Res, HighlightedImageModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      EventModel event,
      String image,
      @TimestampConverter() DateTime createdAt});

  $AppUserModelCopyWith<$Res> get user;
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$HighlightedImageModelCopyWithImpl<$Res,
        $Val extends HighlightedImageModel>
    implements $HighlightedImageModelCopyWith<$Res> {
  _$HighlightedImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? event = null,
    Object? image = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get user {
    return $AppUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get event {
    return $EventModelCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighlightedImageModelImplCopyWith<$Res>
    implements $HighlightedImageModelCopyWith<$Res> {
  factory _$$HighlightedImageModelImplCopyWith(
          _$HighlightedImageModelImpl value,
          $Res Function(_$HighlightedImageModelImpl) then) =
      __$$HighlightedImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      EventModel event,
      String image,
      @TimestampConverter() DateTime createdAt});

  @override
  $AppUserModelCopyWith<$Res> get user;
  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$HighlightedImageModelImplCopyWithImpl<$Res>
    extends _$HighlightedImageModelCopyWithImpl<$Res,
        _$HighlightedImageModelImpl>
    implements _$$HighlightedImageModelImplCopyWith<$Res> {
  __$$HighlightedImageModelImplCopyWithImpl(_$HighlightedImageModelImpl _value,
      $Res Function(_$HighlightedImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? event = null,
    Object? image = null,
    Object? createdAt = null,
  }) {
    return _then(_$HighlightedImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HighlightedImageModelImpl extends _HighlightedImageModel {
  const _$HighlightedImageModelImpl(
      {required this.id,
      required this.user,
      required this.event,
      required this.image,
      @TimestampConverter() required this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final AppUserModel user;
  @override
  final EventModel event;
  @override
  final String image;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'HighlightedImageModel(id: $id, user: $user, event: $event, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightedImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, event, image, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightedImageModelImplCopyWith<_$HighlightedImageModelImpl>
      get copyWith => __$$HighlightedImageModelImplCopyWithImpl<
          _$HighlightedImageModelImpl>(this, _$identity);
}

abstract class _HighlightedImageModel extends HighlightedImageModel {
  const factory _HighlightedImageModel(
          {required final String id,
          required final AppUserModel user,
          required final EventModel event,
          required final String image,
          @TimestampConverter() required final DateTime createdAt}) =
      _$HighlightedImageModelImpl;
  const _HighlightedImageModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get user;
  @override
  EventModel get event;
  @override
  String get image;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$HighlightedImageModelImplCopyWith<_$HighlightedImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
