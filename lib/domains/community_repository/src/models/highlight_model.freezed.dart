// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HighlightModel {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  AppUserModel get user => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightModelCopyWith<HighlightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightModelCopyWith<$Res> {
  factory $HighlightModelCopyWith(
          HighlightModel value, $Res Function(HighlightModel) then) =
      _$HighlightModelCopyWithImpl<$Res, HighlightModel>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      AppUserModel user,
      String image,
      @TimestampConverter() DateTime createdAt});

  $AppUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$HighlightModelCopyWithImpl<$Res, $Val extends HighlightModel>
    implements $HighlightModelCopyWith<$Res> {
  _$HighlightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? user = null,
    Object? image = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
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
}

/// @nodoc
abstract class _$$HighlightModelImplCopyWith<$Res>
    implements $HighlightModelCopyWith<$Res> {
  factory _$$HighlightModelImplCopyWith(_$HighlightModelImpl value,
          $Res Function(_$HighlightModelImpl) then) =
      __$$HighlightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      AppUserModel user,
      String image,
      @TimestampConverter() DateTime createdAt});

  @override
  $AppUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$HighlightModelImplCopyWithImpl<$Res>
    extends _$HighlightModelCopyWithImpl<$Res, _$HighlightModelImpl>
    implements _$$HighlightModelImplCopyWith<$Res> {
  __$$HighlightModelImplCopyWithImpl(
      _$HighlightModelImpl _value, $Res Function(_$HighlightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? user = null,
    Object? image = null,
    Object? createdAt = null,
  }) {
    return _then(_$HighlightModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
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

class _$HighlightModelImpl extends _HighlightModel {
  const _$HighlightModelImpl(
      {required this.id,
      required this.eventId,
      required this.user,
      required this.image,
      @TimestampConverter() required this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final String eventId;
  @override
  final AppUserModel user;
  @override
  final String image;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'HighlightModel(id: $id, eventId: $eventId, user: $user, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, eventId, user, image, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightModelImplCopyWith<_$HighlightModelImpl> get copyWith =>
      __$$HighlightModelImplCopyWithImpl<_$HighlightModelImpl>(
          this, _$identity);
}

abstract class _HighlightModel extends HighlightModel {
  const factory _HighlightModel(
          {required final String id,
          required final String eventId,
          required final AppUserModel user,
          required final String image,
          @TimestampConverter() required final DateTime createdAt}) =
      _$HighlightModelImpl;
  const _HighlightModel._() : super._();

  @override
  String get id;
  @override
  String get eventId;
  @override
  AppUserModel get user;
  @override
  String get image;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$HighlightModelImplCopyWith<_$HighlightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
