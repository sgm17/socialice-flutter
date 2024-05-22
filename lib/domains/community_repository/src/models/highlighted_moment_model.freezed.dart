// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlighted_moment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HighlightedMomentModel {
  EventModel get event => throw _privateConstructorUsedError;
  List<HighlightedImageModel> get images => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HighlightedMomentModelCopyWith<HighlightedMomentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightedMomentModelCopyWith<$Res> {
  factory $HighlightedMomentModelCopyWith(HighlightedMomentModel value,
          $Res Function(HighlightedMomentModel) then) =
      _$HighlightedMomentModelCopyWithImpl<$Res, HighlightedMomentModel>;
  @useResult
  $Res call(
      {EventModel event,
      List<HighlightedImageModel> images,
      @TimestampConverter() DateTime timestamp});

  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$HighlightedMomentModelCopyWithImpl<$Res,
        $Val extends HighlightedMomentModel>
    implements $HighlightedMomentModelCopyWith<$Res> {
  _$HighlightedMomentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? images = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HighlightedImageModel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
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
abstract class _$$HighlightedMomentModelImplCopyWith<$Res>
    implements $HighlightedMomentModelCopyWith<$Res> {
  factory _$$HighlightedMomentModelImplCopyWith(
          _$HighlightedMomentModelImpl value,
          $Res Function(_$HighlightedMomentModelImpl) then) =
      __$$HighlightedMomentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventModel event,
      List<HighlightedImageModel> images,
      @TimestampConverter() DateTime timestamp});

  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$HighlightedMomentModelImplCopyWithImpl<$Res>
    extends _$HighlightedMomentModelCopyWithImpl<$Res,
        _$HighlightedMomentModelImpl>
    implements _$$HighlightedMomentModelImplCopyWith<$Res> {
  __$$HighlightedMomentModelImplCopyWithImpl(
      _$HighlightedMomentModelImpl _value,
      $Res Function(_$HighlightedMomentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? images = null,
    Object? timestamp = null,
  }) {
    return _then(_$HighlightedMomentModelImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HighlightedImageModel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HighlightedMomentModelImpl extends _HighlightedMomentModel {
  const _$HighlightedMomentModelImpl(
      {required this.event,
      required final List<HighlightedImageModel> images,
      @TimestampConverter() required this.timestamp})
      : _images = images,
        super._();

  @override
  final EventModel event;
  final List<HighlightedImageModel> _images;
  @override
  List<HighlightedImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @TimestampConverter()
  final DateTime timestamp;

  @override
  String toString() {
    return 'HighlightedMomentModel(event: $event, images: $images, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightedMomentModelImpl &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event,
      const DeepCollectionEquality().hash(_images), timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightedMomentModelImplCopyWith<_$HighlightedMomentModelImpl>
      get copyWith => __$$HighlightedMomentModelImplCopyWithImpl<
          _$HighlightedMomentModelImpl>(this, _$identity);
}

abstract class _HighlightedMomentModel extends HighlightedMomentModel {
  const factory _HighlightedMomentModel(
          {required final EventModel event,
          required final List<HighlightedImageModel> images,
          @TimestampConverter() required final DateTime timestamp}) =
      _$HighlightedMomentModelImpl;
  const _HighlightedMomentModel._() : super._();

  @override
  EventModel get event;
  @override
  List<HighlightedImageModel> get images;
  @override
  @TimestampConverter()
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$HighlightedMomentModelImplCopyWith<_$HighlightedMomentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
