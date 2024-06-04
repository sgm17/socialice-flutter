// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityMessageModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get user => throw _privateConstructorUsedError;
  CommunityChatModel get chat => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CommunityMessageModel> get messages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityMessageModelCopyWith<CommunityMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityMessageModelCopyWith<$Res> {
  factory $CommunityMessageModelCopyWith(CommunityMessageModel value,
          $Res Function(CommunityMessageModel) then) =
      _$CommunityMessageModelCopyWithImpl<$Res, CommunityMessageModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      CommunityChatModel chat,
      String message,
      List<CommunityMessageModel> messages});

  $AppUserModelCopyWith<$Res> get user;
  $CommunityChatModelCopyWith<$Res> get chat;
}

/// @nodoc
class _$CommunityMessageModelCopyWithImpl<$Res,
        $Val extends CommunityMessageModel>
    implements $CommunityMessageModelCopyWith<$Res> {
  _$CommunityMessageModelCopyWithImpl(this._value, this._then);

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
    Object? messages = null,
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
              as CommunityChatModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CommunityMessageModel>,
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
  $CommunityChatModelCopyWith<$Res> get chat {
    return $CommunityChatModelCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityMessageModelImplCopyWith<$Res>
    implements $CommunityMessageModelCopyWith<$Res> {
  factory _$$CommunityMessageModelImplCopyWith(
          _$CommunityMessageModelImpl value,
          $Res Function(_$CommunityMessageModelImpl) then) =
      __$$CommunityMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel user,
      CommunityChatModel chat,
      String message,
      List<CommunityMessageModel> messages});

  @override
  $AppUserModelCopyWith<$Res> get user;
  @override
  $CommunityChatModelCopyWith<$Res> get chat;
}

/// @nodoc
class __$$CommunityMessageModelImplCopyWithImpl<$Res>
    extends _$CommunityMessageModelCopyWithImpl<$Res,
        _$CommunityMessageModelImpl>
    implements _$$CommunityMessageModelImplCopyWith<$Res> {
  __$$CommunityMessageModelImplCopyWithImpl(_$CommunityMessageModelImpl _value,
      $Res Function(_$CommunityMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? chat = null,
    Object? message = null,
    Object? messages = null,
  }) {
    return _then(_$CommunityMessageModelImpl(
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
              as CommunityChatModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CommunityMessageModel>,
    ));
  }
}

/// @nodoc

class _$CommunityMessageModelImpl extends _CommunityMessageModel {
  const _$CommunityMessageModelImpl(
      {required this.id,
      required this.user,
      required this.chat,
      required this.message,
      required final List<CommunityMessageModel> messages})
      : _messages = messages,
        super._();

  @override
  final String id;
  @override
  final AppUserModel user;
  @override
  final CommunityChatModel chat;
  @override
  final String message;
  final List<CommunityMessageModel> _messages;
  @override
  List<CommunityMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'CommunityMessageModel(id: $id, user: $user, chat: $chat, message: $message, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user, chat, message,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityMessageModelImplCopyWith<_$CommunityMessageModelImpl>
      get copyWith => __$$CommunityMessageModelImplCopyWithImpl<
          _$CommunityMessageModelImpl>(this, _$identity);
}

abstract class _CommunityMessageModel extends CommunityMessageModel {
  const factory _CommunityMessageModel(
          {required final String id,
          required final AppUserModel user,
          required final CommunityChatModel chat,
          required final String message,
          required final List<CommunityMessageModel> messages}) =
      _$CommunityMessageModelImpl;
  const _CommunityMessageModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get user;
  @override
  CommunityChatModel get chat;
  @override
  String get message;
  @override
  List<CommunityMessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$CommunityMessageModelImplCopyWith<_$CommunityMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
