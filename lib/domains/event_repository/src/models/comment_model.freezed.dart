// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentModel {
  String get id => throw _privateConstructorUsedError;
  AppUserModel get creator => throw _privateConstructorUsedError;
  EventModel get event => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<String>? get likes => throw _privateConstructorUsedError;
  List<CommentReplyModel>? get replies => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {String id,
      AppUserModel creator,
      EventModel event,
      String comment,
      List<String>? likes,
      List<CommentReplyModel>? replies,
      @TimestampConverter() DateTime createdAt});

  $AppUserModelCopyWith<$Res> get creator;
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? event = null,
    Object? comment = null,
    Object? likes = freezed,
    Object? replies = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyModel>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AppUserModel creator,
      EventModel event,
      String comment,
      List<String>? likes,
      List<CommentReplyModel>? replies,
      @TimestampConverter() DateTime createdAt});

  @override
  $AppUserModelCopyWith<$Res> get creator;
  @override
  $EventModelCopyWith<$Res> get event;
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? event = null,
    Object? comment = null,
    Object? likes = freezed,
    Object? replies = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$CommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyModel>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CommentModelImpl extends _CommentModel {
  const _$CommentModelImpl(
      {required this.id,
      required this.creator,
      required this.event,
      required this.comment,
      final List<String>? likes = const [],
      final List<CommentReplyModel>? replies = const [],
      @TimestampConverter() required this.createdAt})
      : _likes = likes,
        _replies = replies,
        super._();

  @override
  final String id;
  @override
  final AppUserModel creator;
  @override
  final EventModel event;
  @override
  final String comment;
  final List<String>? _likes;
  @override
  @JsonKey()
  List<String>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommentReplyModel>? _replies;
  @override
  @JsonKey()
  List<CommentReplyModel>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'CommentModel(id: $id, creator: $creator, event: $event, comment: $comment, likes: $likes, replies: $replies, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creator,
      event,
      comment,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_replies),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);
}

abstract class _CommentModel extends CommentModel {
  const factory _CommentModel(
          {required final String id,
          required final AppUserModel creator,
          required final EventModel event,
          required final String comment,
          final List<String>? likes,
          final List<CommentReplyModel>? replies,
          @TimestampConverter() required final DateTime createdAt}) =
      _$CommentModelImpl;
  const _CommentModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get creator;
  @override
  EventModel get event;
  @override
  String get comment;
  @override
  List<String>? get likes;
  @override
  List<CommentReplyModel>? get replies;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
