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
  String get id => throw _privateConstructorUsedError;
  CommentModel get parentComment => throw _privateConstructorUsedError;
  AppUserModel get creator => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<String>? get likes => throw _privateConstructorUsedError;

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
      {String id,
      CommentModel parentComment,
      AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      List<String>? likes});

  $CommentModelCopyWith<$Res> get parentComment;
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
    Object? id = null,
    Object? parentComment = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentComment: null == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as CommentModel,
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
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res> get parentComment {
    return $CommentModelCopyWith<$Res>(_value.parentComment, (value) {
      return _then(_value.copyWith(parentComment: value) as $Val);
    });
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
      {String id,
      CommentModel parentComment,
      AppUserModel creator,
      @TimestampConverter() DateTime createdAt,
      String comment,
      List<String>? likes});

  @override
  $CommentModelCopyWith<$Res> get parentComment;
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
    Object? id = null,
    Object? parentComment = null,
    Object? creator = null,
    Object? createdAt = null,
    Object? comment = null,
    Object? likes = freezed,
  }) {
    return _then(_$CommentReplyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentComment: null == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as CommentModel,
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
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$CommentReplyModelImpl extends _CommentReplyModel {
  const _$CommentReplyModelImpl(
      {required this.id,
      required this.parentComment,
      required this.creator,
      @TimestampConverter() required this.createdAt,
      required this.comment,
      final List<String>? likes})
      : _likes = likes,
        super._();

  @override
  final String id;
  @override
  final CommentModel parentComment;
  @override
  final AppUserModel creator;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String comment;
  final List<String>? _likes;
  @override
  List<String>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentReplyModel(id: $id, parentComment: $parentComment, creator: $creator, createdAt: $createdAt, comment: $comment, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentComment, creator,
      createdAt, comment, const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      __$$CommentReplyModelImplCopyWithImpl<_$CommentReplyModelImpl>(
          this, _$identity);
}

abstract class _CommentReplyModel extends CommentReplyModel {
  const factory _CommentReplyModel(
      {required final String id,
      required final CommentModel parentComment,
      required final AppUserModel creator,
      @TimestampConverter() required final DateTime createdAt,
      required final String comment,
      final List<String>? likes}) = _$CommentReplyModelImpl;
  const _CommentReplyModel._() : super._();

  @override
  String get id;
  @override
  CommentModel get parentComment;
  @override
  AppUserModel get creator;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String get comment;
  @override
  List<String>? get likes;
  @override
  @JsonKey(ignore: true)
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
