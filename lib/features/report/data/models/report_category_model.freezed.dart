// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportCategoryModel _$ReportCategoryModelFromJson(Map<String, dynamic> json) {
  return _ReportCategoryModel.fromJson(json);
}

/// @nodoc
class _$ReportCategoryModelTearOff {
  const _$ReportCategoryModelTearOff();

  _ReportCategoryModel call({required int id, required String name}) {
    return _ReportCategoryModel(
      id: id,
      name: name,
    );
  }

  ReportCategoryModel fromJson(Map<String, Object> json) {
    return ReportCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $ReportCategoryModel = _$ReportCategoryModelTearOff();

/// @nodoc
mixin _$ReportCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCategoryModelCopyWith<ReportCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCategoryModelCopyWith<$Res> {
  factory $ReportCategoryModelCopyWith(
          ReportCategoryModel value, $Res Function(ReportCategoryModel) then) =
      _$ReportCategoryModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ReportCategoryModelCopyWithImpl<$Res>
    implements $ReportCategoryModelCopyWith<$Res> {
  _$ReportCategoryModelCopyWithImpl(this._value, this._then);

  final ReportCategoryModel _value;
  // ignore: unused_field
  final $Res Function(ReportCategoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportCategoryModelCopyWith<$Res>
    implements $ReportCategoryModelCopyWith<$Res> {
  factory _$ReportCategoryModelCopyWith(_ReportCategoryModel value,
          $Res Function(_ReportCategoryModel) then) =
      __$ReportCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$ReportCategoryModelCopyWithImpl<$Res>
    extends _$ReportCategoryModelCopyWithImpl<$Res>
    implements _$ReportCategoryModelCopyWith<$Res> {
  __$ReportCategoryModelCopyWithImpl(
      _ReportCategoryModel _value, $Res Function(_ReportCategoryModel) _then)
      : super(_value, (v) => _then(v as _ReportCategoryModel));

  @override
  _ReportCategoryModel get _value => super._value as _ReportCategoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ReportCategoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportCategoryModel implements _ReportCategoryModel {
  const _$_ReportCategoryModel({required this.id, required this.name});

  factory _$_ReportCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportCategoryModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ReportCategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportCategoryModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ReportCategoryModelCopyWith<_ReportCategoryModel> get copyWith =>
      __$ReportCategoryModelCopyWithImpl<_ReportCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportCategoryModelToJson(this);
  }
}

abstract class _ReportCategoryModel implements ReportCategoryModel {
  const factory _ReportCategoryModel({required int id, required String name}) =
      _$_ReportCategoryModel;

  factory _ReportCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_ReportCategoryModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportCategoryModelCopyWith<_ReportCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
