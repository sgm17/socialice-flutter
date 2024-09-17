// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventChatModel {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  List<EventMessageModel>? get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventChatModelCopyWith<EventChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventChatModelCopyWith<$Res> {
  factory $EventChatModelCopyWith(
          EventChatModel value, $Res Function(EventChatModel) then) =
      _$EventChatModelCopyWithImpl<$Res, EventChatModel>;
  @useResult
  $Res call({String id, String eventId, List<EventMessageModel>? messages});
}

/// @nodoc
class _$EventChatModelCopyWithImpl<$Res, $Val extends EventChatModel>
    implements $EventChatModelCopyWith<$Res> {
  _$EventChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? messages = freezed,
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
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<EventMessageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventChatModelImplCopyWith<$Res>
    implements $EventChatModelCopyWith<$Res> {
  factory _$$EventChatModelImplCopyWith(_$EventChatModelImpl value,
          $Res Function(_$EventChatModelImpl) then) =
      __$$EventChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String eventId, List<EventMessageModel>? messages});
}

/// @nodoc
class __$$EventChatModelImplCopyWithImpl<$Res>
    extends _$EventChatModelCopyWithImpl<$Res, _$EventChatModelImpl>
    implements _$$EventChatModelImplCopyWith<$Res> {
  __$$EventChatModelImplCopyWithImpl(
      _$EventChatModelImpl _value, $Res Function(_$EventChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? messages = freezed,
  }) {
    return _then(_$EventChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<EventMessageModel>?,
    ));
  }
}

/// @nodoc

class _$EventChatModelImpl extends _EventChatModel {
  const _$EventChatModelImpl(
      {required this.id,
      required this.eventId,
      final List<EventMessageModel>? messages = const []})
      : _messages = messages,
        super._();

  @override
  final String id;
  @override
  final String eventId;
  final List<EventMessageModel>? _messages;
  @override
  @JsonKey()
  List<EventMessageModel>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventChatModel(id: $id, eventId: $eventId, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, eventId, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventChatModelImplCopyWith<_$EventChatModelImpl> get copyWith =>
      __$$EventChatModelImplCopyWithImpl<_$EventChatModelImpl>(
          this, _$identity);
}

abstract class _EventChatModel extends EventChatModel {
  const factory _EventChatModel(
      {required final String id,
      required final String eventId,
      final List<EventMessageModel>? messages}) = _$EventChatModelImpl;
  const _EventChatModel._() : super._();

  @override
  String get id;
  @override
  String get eventId;
  @override
  List<EventMessageModel>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$EventChatModelImplCopyWith<_$EventChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
