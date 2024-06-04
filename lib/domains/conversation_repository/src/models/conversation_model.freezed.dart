// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get userA => throw _privateConstructorUsedError;
  AppUserModel get userB => throw _privateConstructorUsedError;
  MessageModel get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationModelCopyWith<ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModelCopyWith<$Res> {
  factory $ConversationModelCopyWith(
          ConversationModel value, $Res Function(ConversationModel) then) =
      _$ConversationModelCopyWithImpl<$Res, ConversationModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel userA,
      AppUserModel userB,
      MessageModel messages});

  $AppUserModelCopyWith<$Res> get userA;
  $AppUserModelCopyWith<$Res> get userB;
  $MessageModelCopyWith<$Res> get messages;
}

/// @nodoc
class _$ConversationModelCopyWithImpl<$Res, $Val extends ConversationModel>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userA = null,
    Object? userB = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userA: null == userA
          ? _value.userA
          : userA // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      userB: null == userB
          ? _value.userB
          : userB // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get userA {
    return $AppUserModelCopyWith<$Res>(_value.userA, (value) {
      return _then(_value.copyWith(userA: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get userB {
    return $AppUserModelCopyWith<$Res>(_value.userB, (value) {
      return _then(_value.copyWith(userB: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get messages {
    return $MessageModelCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationModelImplCopyWith<$Res>
    implements $ConversationModelCopyWith<$Res> {
  factory _$$ConversationModelImplCopyWith(_$ConversationModelImpl value,
          $Res Function(_$ConversationModelImpl) then) =
      __$$ConversationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel userA,
      AppUserModel userB,
      MessageModel messages});

  @override
  $AppUserModelCopyWith<$Res> get userA;
  @override
  $AppUserModelCopyWith<$Res> get userB;
  @override
  $MessageModelCopyWith<$Res> get messages;
}

/// @nodoc
class __$$ConversationModelImplCopyWithImpl<$Res>
    extends _$ConversationModelCopyWithImpl<$Res, _$ConversationModelImpl>
    implements _$$ConversationModelImplCopyWith<$Res> {
  __$$ConversationModelImplCopyWithImpl(_$ConversationModelImpl _value,
      $Res Function(_$ConversationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userA = null,
    Object? userB = null,
    Object? messages = null,
  }) {
    return _then(_$ConversationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userA: null == userA
          ? _value.userA
          : userA // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      userB: null == userB
          ? _value.userB
          : userB // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }
}

/// @nodoc

class _$ConversationModelImpl extends _ConversationModel {
  const _$ConversationModelImpl(
      {required this.id,
      required this.userA,
      required this.userB,
      required this.messages})
      : super._();

  @override
  final String id;
  @override
  final AppUserModel userA;
  @override
  final AppUserModel userB;
  @override
  final MessageModel messages;

  @override
  String toString() {
    return 'ConversationModel(id: $id, userA: $userA, userB: $userB, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userA, userA) || other.userA == userA) &&
            (identical(other.userB, userB) || other.userB == userB) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userA, userB, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      __$$ConversationModelImplCopyWithImpl<_$ConversationModelImpl>(
          this, _$identity);
}

abstract class _ConversationModel extends ConversationModel {
  const factory _ConversationModel(
      {required final String id,
      required final AppUserModel userA,
      required final AppUserModel userB,
      required final MessageModel messages}) = _$ConversationModelImpl;
  const _ConversationModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get userA;
  @override
  AppUserModel get userB;
  @override
  MessageModel get messages;
  @override
  @JsonKey(ignore: true)
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
