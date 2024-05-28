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
  AppUserModel get creator => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  List<String> get reports => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

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
      AppUserModel creator,
      String comment,
      List<String> likes,
      List<String> reports,
      @TimestampConverter() DateTime createdAt});

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
    Object? creator = null,
    Object? comment = null,
    Object? likes = null,
    Object? reports = null,
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
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      AppUserModel creator,
      String comment,
      List<String> likes,
      List<String> reports,
      @TimestampConverter() DateTime createdAt});

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
    Object? creator = null,
    Object? comment = null,
    Object? likes = null,
    Object? reports = null,
    Object? createdAt = null,
  }) {
    return _then(_$CommentReplyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as AppUserModel,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CommentReplyModelImpl extends _CommentReplyModel {
  const _$CommentReplyModelImpl(
      {required this.id,
      required this.creator,
      required this.comment,
      required final List<String> likes,
      required final List<String> reports,
      @TimestampConverter() required this.createdAt})
      : _likes = likes,
        _reports = reports,
        super._();

  @override
  final String id;
  @override
  final AppUserModel creator;
  @override
  final String comment;
  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<String> _reports;
  @override
  List<String> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'CommentReplyModel(id: $id, creator: $creator, comment: $comment, likes: $likes, reports: $reports, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creator,
      comment,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_reports),
      createdAt);

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
          required final AppUserModel creator,
          required final String comment,
          required final List<String> likes,
          required final List<String> reports,
          @TimestampConverter() required final DateTime createdAt}) =
      _$CommentReplyModelImpl;
  const _CommentReplyModel._() : super._();

  @override
  String get id;
  @override
  AppUserModel get creator;
  @override
  String get comment;
  @override
  List<String> get likes;
  @override
  List<String> get reports;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
