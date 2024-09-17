// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventMessageModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get user => throw _privateConstructorUsedError;
  EventChatModel get chat => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventMessageModelCopyWith<EventMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMessageModelCopyWith<$Res> {
  factory $EventMessageModelCopyWith(
          EventMessageModel value, $Res Function(EventMessageModel) then) =
      _$EventMessageModelCopyWithImpl<$Res, EventMessageModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      EventChatModel chat,
      String message,
      @TimestampConverter() DateTime createdAt});

  $AppUserModelCopyWith<$Res> get user;
  $EventChatModelCopyWith<$Res> get chat;
}

/// @nodoc
class _$EventMessageModelCopyWithImpl<$Res, $Val extends EventMessageModel>
    implements $EventMessageModelCopyWith<$Res> {
  _$EventMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? chat = null,
    Object? message = null,
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
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as EventChatModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
  $EventChatModelCopyWith<$Res> get chat {
    return $EventChatModelCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventMessageModelImplCopyWith<$Res>
    implements $EventMessageModelCopyWith<$Res> {
  factory _$$EventMessageModelImplCopyWith(_$EventMessageModelImpl value,
          $Res Function(_$EventMessageModelImpl) then) =
      __$$EventMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      EventChatModel chat,
      String message,
      @TimestampConverter() DateTime createdAt});

  @override
  $AppUserModelCopyWith<$Res> get user;
  @override
  $EventChatModelCopyWith<$Res> get chat;
}

/// @nodoc
class __$$EventMessageModelImplCopyWithImpl<$Res>
    extends _$EventMessageModelCopyWithImpl<$Res, _$EventMessageModelImpl>
    implements _$$EventMessageModelImplCopyWith<$Res> {
  __$$EventMessageModelImplCopyWithImpl(_$EventMessageModelImpl _value,
      $Res Function(_$EventMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? chat = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$EventMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as EventChatModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$EventMessageModelImpl extends _EventMessageModel {
  const _$EventMessageModelImpl(
      {required this.id,
      required this.user,
      required this.chat,
      required this.message,
      @TimestampConverter() required this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final AppUserModel user;
  @override
  final EventChatModel chat;
  @override
  final String message;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'EventMessageModel(id: $id, user: $user, chat: $chat, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, chat, message, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventMessageModelImplCopyWith<_$EventMessageModelImpl> get copyWith =>
      __$$EventMessageModelImplCopyWithImpl<_$EventMessageModelImpl>(
          this, _$identity);
}

abstract class _EventMessageModel extends EventMessageModel {
  const factory _EventMessageModel(
          {required final String id,
          required final AppUserModel user,
          required final EventChatModel chat,
          required final String message,
          @TimestampConverter() required final DateTime createdAt}) =
      _$EventMessageModelImpl;
  const _EventMessageModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get user;
  @override
  EventChatModel get chat;
  @override
  String get message;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$EventMessageModelImplCopyWith<_$EventMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
