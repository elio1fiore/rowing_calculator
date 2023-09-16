// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeatureEntity _$FeatureEntityFromJson(Map<String, dynamic> json) {
  return _FeatureEntity.fromJson(json);
}

/// @nodoc
mixin _$FeatureEntity {
  @JsonKey(name: '_id')
  int? get id => throw _privateConstructorUsedError;
  int get dateTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get isImportant => throw _privateConstructorUsedError;
  String get playerStr => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureEntityCopyWith<FeatureEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureEntityCopyWith<$Res> {
  factory $FeatureEntityCopyWith(
          FeatureEntity value, $Res Function(FeatureEntity) then) =
      _$FeatureEntityCopyWithImpl<$Res, FeatureEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      int dateTime,
      String description,
      int isImportant,
      String playerStr,
      String title,
      int type});
}

/// @nodoc
class _$FeatureEntityCopyWithImpl<$Res, $Val extends FeatureEntity>
    implements $FeatureEntityCopyWith<$Res> {
  _$FeatureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = null,
    Object? description = null,
    Object? isImportant = null,
    Object? playerStr = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as int,
      playerStr: null == playerStr
          ? _value.playerStr
          : playerStr // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeatureEntityCopyWith<$Res>
    implements $FeatureEntityCopyWith<$Res> {
  factory _$$_FeatureEntityCopyWith(
          _$_FeatureEntity value, $Res Function(_$_FeatureEntity) then) =
      __$$_FeatureEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      int dateTime,
      String description,
      int isImportant,
      String playerStr,
      String title,
      int type});
}

/// @nodoc
class __$$_FeatureEntityCopyWithImpl<$Res>
    extends _$FeatureEntityCopyWithImpl<$Res, _$_FeatureEntity>
    implements _$$_FeatureEntityCopyWith<$Res> {
  __$$_FeatureEntityCopyWithImpl(
      _$_FeatureEntity _value, $Res Function(_$_FeatureEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = null,
    Object? description = null,
    Object? isImportant = null,
    Object? playerStr = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$_FeatureEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as int,
      playerStr: null == playerStr
          ? _value.playerStr
          : playerStr // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_FeatureEntity extends _FeatureEntity {
  const _$_FeatureEntity(
      {@JsonKey(name: '_id') this.id,
      required this.dateTime,
      required this.description,
      required this.isImportant,
      required this.playerStr,
      required this.title,
      required this.type})
      : super._();

  factory _$_FeatureEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureEntityFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int? id;
  @override
  final int dateTime;
  @override
  final String description;
  @override
  final int isImportant;
  @override
  final String playerStr;
  @override
  final String title;
  @override
  final int type;

  @override
  String toString() {
    return 'FeatureEntity(id: $id, dateTime: $dateTime, description: $description, isImportant: $isImportant, playerStr: $playerStr, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeatureEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isImportant, isImportant) ||
                other.isImportant == isImportant) &&
            (identical(other.playerStr, playerStr) ||
                other.playerStr == playerStr) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, description,
      isImportant, playerStr, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureEntityCopyWith<_$_FeatureEntity> get copyWith =>
      __$$_FeatureEntityCopyWithImpl<_$_FeatureEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureEntityToJson(
      this,
    );
  }
}

abstract class _FeatureEntity extends FeatureEntity {
  const factory _FeatureEntity(
      {@JsonKey(name: '_id') final int? id,
      required final int dateTime,
      required final String description,
      required final int isImportant,
      required final String playerStr,
      required final String title,
      required final int type}) = _$_FeatureEntity;
  const _FeatureEntity._() : super._();

  factory _FeatureEntity.fromJson(Map<String, dynamic> json) =
      _$_FeatureEntity.fromJson;

  @override
  @JsonKey(name: '_id')
  int? get id;
  @override
  int get dateTime;
  @override
  String get description;
  @override
  int get isImportant;
  @override
  String get playerStr;
  @override
  String get title;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureEntityCopyWith<_$_FeatureEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
