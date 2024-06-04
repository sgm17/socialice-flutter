// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketModel {
  String get id => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  bool get scanned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call({String id, EventModel event, String qrCode, bool scanned});

  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? event = null,
    Object? qrCode = null,
    Object? scanned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      scanned: null == scanned
          ? _value.scanned
          : scanned // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, EventModel event, String qrCode, bool scanned});

  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? event = null,
    Object? qrCode = null,
    Object? scanned = null,
  }) {
    return _then(_$TicketModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      scanned: null == scanned
          ? _value.scanned
          : scanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TicketModelImpl extends _TicketModel {
  const _$TicketModelImpl(
      {required this.id,
      required this.event,
      required this.qrCode,
      required this.scanned})
      : super._();

  @override
  final String id;
  @override
  final EventModel event;
  @override
  final String qrCode;
  @override
  final bool scanned;

  @override
  String toString() {
    return 'TicketModel(id: $id, event: $event, qrCode: $qrCode, scanned: $scanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.scanned, scanned) || other.scanned == scanned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, event, qrCode, scanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);
}

abstract class _TicketModel extends TicketModel {
  const factory _TicketModel(
      {required final String id,
      required final EventModel event,
      required final String qrCode,
      required final bool scanned}) = _$TicketModelImpl;
  const _TicketModel._() : super._();

  @override
  String get id;
  @override
  EventModel get event;
  @override
  String get qrCode;
  @override
  bool get scanned;
  @override
  @JsonKey(ignore: true)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
