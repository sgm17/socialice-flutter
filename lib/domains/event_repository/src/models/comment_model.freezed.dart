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
  AppUserModel get creator => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<CommentReplyModel> get commentReplies =>
      throw _privateConstructorUsedError;

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
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      int likes,
      List<CommentReplyModel> commentReplies});

  $AppUserModelCopyWith<$Res> get creator;
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
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = null,
    Object? commentReplies = null,
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
      commentReplies: null == commentReplies
          ? _value.commentReplies
          : commentReplies // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyModel>,
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
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      int likes,
      List<CommentReplyModel> commentReplies});

  @override
  $AppUserModelCopyWith<$Res> get creator;
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
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = null,
    Object? commentReplies = null,
  }) {
    return _then(_$CommentModelImpl(
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
      commentReplies: null == commentReplies
          ? _value._commentReplies
          : commentReplies // ignore: cast_nullable_to_non_nullable
              as List<CommentReplyModel>,
    ));
  }
}

/// @nodoc

class _$CommentModelImpl extends _CommentModel {
  const _$CommentModelImpl(
      {required this.creator,
      @TimestampConverter() required this.createdAt,
      required this.comment,
      required this.likes,
      required final List<CommentReplyModel> commentReplies})
      : _commentReplies = commentReplies,
        super._();

  @override
  final AppUserModel creator;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String comment;
  @override
  final int likes;
  final List<CommentReplyModel> _commentReplies;
  @override
  List<CommentReplyModel> get commentReplies {
    if (_commentReplies is EqualUnmodifiableListView) return _commentReplies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentReplies);
  }

  @override
  String toString() {
    return 'CommentModel(creator: $creator, createdAt: $createdAt, comment: $comment, likes: $likes, commentReplies: $commentReplies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality()
                .equals(other._commentReplies, _commentReplies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creator, createdAt, comment,
      likes, const DeepCollectionEquality().hash(_commentReplies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);
}

abstract class _CommentModel extends CommentModel {
  const factory _CommentModel(
          {required final AppUserModel creator,
          @TimestampConverter() required final DateTime createdAt,
          required final String comment,
          required final int likes,
          required final List<CommentReplyModel> commentReplies}) =
      _$CommentModelImpl;
  const _CommentModel._() : super._();

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
  List<CommentReplyModel> get commentReplies;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
