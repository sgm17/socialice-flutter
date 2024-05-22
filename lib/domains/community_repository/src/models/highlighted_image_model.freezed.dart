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
  AppUserModel get creator => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get eventTitle => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;

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
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String eventTitle,
      EventModel event});

  $AppUserModelCopyWith<$Res> get creator;
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
    Object? creator = null,
    Object? createdAt = null,
    Object? eventTitle = null,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventTitle: null == eventTitle
          ? _value.eventTitle
          : eventTitle // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get creator {
    return $AppUserModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
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
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String eventTitle,
      EventModel event});

  @override
  $AppUserModelCopyWith<$Res> get creator;
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
    Object? creator = null,
    Object? createdAt = null,
    Object? eventTitle = null,
    Object? event = null,
  }) {
    return _then(_$HighlightedImageModelImpl(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventTitle: null == eventTitle
          ? _value.eventTitle
          : eventTitle // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$HighlightedImageModelImpl extends _HighlightedImageModel {
  const _$HighlightedImageModelImpl(
      {required this.creator,
      @TimestampConverter() required this.createdAt,
      required this.eventTitle,
      required this.event})
      : super._();

  @override
  final AppUserModel creator;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String eventTitle;
  @override
  final EventModel event;

  @override
  String toString() {
    return 'HighlightedImageModel(creator: $creator, createdAt: $createdAt, eventTitle: $eventTitle, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightedImageModelImpl &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.eventTitle, eventTitle) ||
                other.eventTitle == eventTitle) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, creator, createdAt, eventTitle, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightedImageModelImplCopyWith<_$HighlightedImageModelImpl>
      get copyWith => __$$HighlightedImageModelImplCopyWithImpl<
          _$HighlightedImageModelImpl>(this, _$identity);
}

abstract class _HighlightedImageModel extends HighlightedImageModel {
  const factory _HighlightedImageModel(
      {required final AppUserModel creator,
      @TimestampConverter() required final DateTime createdAt,
      required final String eventTitle,
      required final EventModel event}) = _$HighlightedImageModelImpl;
  const _HighlightedImageModel._() : super._();

  @override
  AppUserModel get creator;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String get eventTitle;
  @override
  EventModel get event;
  @override
  @JsonKey(ignore: true)
  _$$HighlightedImageModelImplCopyWith<_$HighlightedImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
