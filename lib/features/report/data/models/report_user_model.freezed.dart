// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportUserModel _$ReportUserModelFromJson(Map<String, dynamic> json) {
  return _ReportUserModel.fromJson(json);
}

/// @nodoc
class _$ReportUserModelTearOff {
  const _$ReportUserModelTearOff();

  _ReportUserModel call({required int id, required String username}) {
    return _ReportUserModel(
      id: id,
      username: username,
    );
  }

  ReportUserModel fromJson(Map<String, Object> json) {
    return ReportUserModel.fromJson(json);
  }
}

/// @nodoc
const $ReportUserModel = _$ReportUserModelTearOff();

/// @nodoc
mixin _$ReportUserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportUserModelCopyWith<ReportUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportUserModelCopyWith<$Res> {
  factory $ReportUserModelCopyWith(
          ReportUserModel value, $Res Function(ReportUserModel) then) =
      _$ReportUserModelCopyWithImpl<$Res>;
  $Res call({int id, String username});
}

/// @nodoc
class _$ReportUserModelCopyWithImpl<$Res>
    implements $ReportUserModelCopyWith<$Res> {
  _$ReportUserModelCopyWithImpl(this._value, this._then);

  final ReportUserModel _value;
  // ignore: unused_field
  final $Res Function(ReportUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportUserModelCopyWith<$Res>
    implements $ReportUserModelCopyWith<$Res> {
  factory _$ReportUserModelCopyWith(
          _ReportUserModel value, $Res Function(_ReportUserModel) then) =
      __$ReportUserModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username});
}

/// @nodoc
class __$ReportUserModelCopyWithImpl<$Res>
    extends _$ReportUserModelCopyWithImpl<$Res>
    implements _$ReportUserModelCopyWith<$Res> {
  __$ReportUserModelCopyWithImpl(
      _ReportUserModel _value, $Res Function(_ReportUserModel) _then)
      : super(_value, (v) => _then(v as _ReportUserModel));

  @override
  _ReportUserModel get _value => super._value as _ReportUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_ReportUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportUserModel implements _ReportUserModel {
  const _$_ReportUserModel({required this.id, required this.username});

  factory _$_ReportUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportUserModelFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'ReportUserModel(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportUserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$ReportUserModelCopyWith<_ReportUserModel> get copyWith =>
      __$ReportUserModelCopyWithImpl<_ReportUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportUserModelToJson(this);
  }
}

abstract class _ReportUserModel implements ReportUserModel {
  const factory _ReportUserModel({required int id, required String username}) =
      _$_ReportUserModel;

  factory _ReportUserModel.fromJson(Map<String, dynamic> json) =
      _$_ReportUserModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportUserModelCopyWith<_ReportUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
