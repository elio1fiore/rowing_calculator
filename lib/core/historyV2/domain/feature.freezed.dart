// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Feature {
  int? get id => throw _privateConstructorUsedError;
  UnionPlayer get player => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get isImportant => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  FeatureType get featureType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call(
      {int? id,
      UnionPlayer player,
      DateTime dateTime,
      bool isImportant,
      String description,
      String title,
      FeatureType featureType});

  $UnionPlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? player = null,
    Object? dateTime = null,
    Object? isImportant = null,
    Object? description = null,
    Object? title = null,
    Object? featureType = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as UnionPlayer,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      featureType: null == featureType
          ? _value.featureType
          : featureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnionPlayerCopyWith<$Res> get player {
    return $UnionPlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$_FeatureCopyWith(
          _$_Feature value, $Res Function(_$_Feature) then) =
      __$$_FeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      UnionPlayer player,
      DateTime dateTime,
      bool isImportant,
      String description,
      String title,
      FeatureType featureType});

  @override
  $UnionPlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$_FeatureCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$_Feature>
    implements _$$_FeatureCopyWith<$Res> {
  __$$_FeatureCopyWithImpl(_$_Feature _value, $Res Function(_$_Feature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? player = null,
    Object? dateTime = null,
    Object? isImportant = null,
    Object? description = null,
    Object? title = null,
    Object? featureType = null,
  }) {
    return _then(_$_Feature(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as UnionPlayer,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      featureType: null == featureType
          ? _value.featureType
          : featureType // ignore: cast_nullable_to_non_nullable
              as FeatureType,
    ));
  }
}

/// @nodoc

class _$_Feature implements _Feature {
  const _$_Feature(
      {this.id,
      required this.player,
      required this.dateTime,
      required this.isImportant,
      required this.description,
      required this.title,
      required this.featureType});

  @override
  final int? id;
  @override
  final UnionPlayer player;
  @override
  final DateTime dateTime;
  @override
  final bool isImportant;
  @override
  final String description;
  @override
  final String title;
  @override
  final FeatureType featureType;

  @override
  String toString() {
    return 'Feature(id: $id, player: $player, dateTime: $dateTime, isImportant: $isImportant, description: $description, title: $title, featureType: $featureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feature &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isImportant, isImportant) ||
                other.isImportant == isImportant) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.featureType, featureType) ||
                other.featureType == featureType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, player, dateTime,
      isImportant, description, title, featureType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      __$$_FeatureCopyWithImpl<_$_Feature>(this, _$identity);
}

abstract class _Feature implements Feature {
  const factory _Feature(
      {final int? id,
      required final UnionPlayer player,
      required final DateTime dateTime,
      required final bool isImportant,
      required final String description,
      required final String title,
      required final FeatureType featureType}) = _$_Feature;

  @override
  int? get id;
  @override
  UnionPlayer get player;
  @override
  DateTime get dateTime;
  @override
  bool get isImportant;
  @override
  String get description;
  @override
  String get title;
  @override
  FeatureType get featureType;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureCopyWith<_$_Feature> get copyWith =>
      throw _privateConstructorUsedError;
}
