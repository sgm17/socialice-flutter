// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunityChatModel {
  String get id => throw _privateConstructorUsedError;
  String get communityId => throw _privateConstructorUsedError;
  List<CommunityMessageModel> get messages =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityChatModelCopyWith<CommunityChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityChatModelCopyWith<$Res> {
  factory $CommunityChatModelCopyWith(
          CommunityChatModel value, $Res Function(CommunityChatModel) then) =
      _$CommunityChatModelCopyWithImpl<$Res, CommunityChatModel>;
  @useResult
  $Res call(
      {String id,
      String communityId,
      List<CommunityMessageModel> messages,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$CommunityChatModelCopyWithImpl<$Res, $Val extends CommunityChatModel>
    implements $CommunityChatModelCopyWith<$Res> {
  _$CommunityChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? messages = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CommunityMessageModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityChatModelImplCopyWith<$Res>
    implements $CommunityChatModelCopyWith<$Res> {
  factory _$$CommunityChatModelImplCopyWith(_$CommunityChatModelImpl value,
          $Res Function(_$CommunityChatModelImpl) then) =
      __$$CommunityChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String communityId,
      List<CommunityMessageModel> messages,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$CommunityChatModelImplCopyWithImpl<$Res>
    extends _$CommunityChatModelCopyWithImpl<$Res, _$CommunityChatModelImpl>
    implements _$$CommunityChatModelImplCopyWith<$Res> {
  __$$CommunityChatModelImplCopyWithImpl(_$CommunityChatModelImpl _value,
      $Res Function(_$CommunityChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? communityId = null,
    Object? messages = null,
    Object? createdAt = null,
  }) {
    return _then(_$CommunityChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      communityId: null == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CommunityMessageModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CommunityChatModelImpl extends _CommunityChatModel {
  const _$CommunityChatModelImpl(
      {required this.id,
      required this.communityId,
      required final List<CommunityMessageModel> messages,
      @TimestampConverter() required this.createdAt})
      : _messages = messages,
        super._();

  @override
  final String id;
  @override
  final String communityId;
  final List<CommunityMessageModel> _messages;
  @override
  List<CommunityMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'CommunityChatModel(id: $id, communityId: $communityId, messages: $messages, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, communityId,
      const DeepCollectionEquality().hash(_messages), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityChatModelImplCopyWith<_$CommunityChatModelImpl> get copyWith =>
      __$$CommunityChatModelImplCopyWithImpl<_$CommunityChatModelImpl>(
          this, _$identity);
}

abstract class _CommunityChatModel extends CommunityChatModel {
  const factory _CommunityChatModel(
          {required final String id,
          required final String communityId,
          required final List<CommunityMessageModel> messages,
          @TimestampConverter() required final DateTime createdAt}) =
      _$CommunityChatModelImpl;
  const _CommunityChatModel._() : super._();

  @override
  String get id;
  @override
  String get communityId;
  @override
  List<CommunityMessageModel> get messages;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CommunityChatModelImplCopyWith<_$CommunityChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
