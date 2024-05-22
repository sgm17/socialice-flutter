// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentReplyModel {
  AppUserModel get creator => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentReplyModelCopyWith<CommentReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyModelCopyWith<$Res> {
  factory $CommentReplyModelCopyWith(
          CommentReplyModel value, $Res Function(CommentReplyModel) then) =
      _$CommentReplyModelCopyWithImpl<$Res, CommentReplyModel>;
  @useResult
  $Res call(
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      int likes});

  $AppUserModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$CommentReplyModelCopyWithImpl<$Res, $Val extends CommentReplyModel>
    implements $CommentReplyModelCopyWith<$Res> {
  _$CommentReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = null,
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
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserModelCopyWith<$Res> get creator {
    return $AppUserModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentReplyModelImplCopyWith<$Res>
    implements $CommentReplyModelCopyWith<$Res> {
  factory _$$CommentReplyModelImplCopyWith(_$CommentReplyModelImpl value,
          $Res Function(_$CommentReplyModelImpl) then) =
      __$$CommentReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      int likes});

  @override
  $AppUserModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$$CommentReplyModelImplCopyWithImpl<$Res>
    extends _$CommentReplyModelCopyWithImpl<$Res, _$CommentReplyModelImpl>
    implements _$$CommentReplyModelImplCopyWith<$Res> {
  __$$CommentReplyModelImplCopyWithImpl(_$CommentReplyModelImpl _value,
      $Res Function(_$CommentReplyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = null,
  }) {
    return _then(_$CommentReplyModelImpl(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommentReplyModelImpl extends _CommentReplyModel {
  const _$CommentReplyModelImpl(
      {required this.creator,
      @TimestampConverter() required this.createdAt,
      required this.comment,
      required this.likes})
      : super._();

  @override
  final AppUserModel creator;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String comment;
  @override
  final int likes;

  @override
  String toString() {
    return 'CommentReplyModel(creator: $creator, createdAt: $createdAt, comment: $comment, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyModelImpl &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, creator, createdAt, comment, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      __$$CommentReplyModelImplCopyWithImpl<_$CommentReplyModelImpl>(
          this, _$identity);
}

abstract class _CommentReplyModel extends CommentReplyModel {
  const factory _CommentReplyModel(
      {required final AppUserModel creator,
      @TimestampConverter() required final DateTime createdAt,
      required final String comment,
      required final int likes}) = _$CommentReplyModelImpl;
  const _CommentReplyModel._() : super._();

  @override
  AppUserModel get creator;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String get comment;
  @override
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
