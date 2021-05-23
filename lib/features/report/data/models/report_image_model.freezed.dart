// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportImageModel _$ReportImageModelFromJson(Map<String, dynamic> json) {
  return _ReportImageModel.fromJson(json);
}

/// @nodoc
class _$ReportImageModelTearOff {
  const _$ReportImageModelTearOff();

  _ReportImageModel call({required int id, required String url}) {
    return _ReportImageModel(
      id: id,
      url: url,
    );
  }

  ReportImageModel fromJson(Map<String, Object> json) {
    return ReportImageModel.fromJson(json);
  }
}

/// @nodoc
const $ReportImageModel = _$ReportImageModelTearOff();

/// @nodoc
mixin _$ReportImageModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportImageModelCopyWith<ReportImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportImageModelCopyWith<$Res> {
  factory $ReportImageModelCopyWith(
          ReportImageModel value, $Res Function(ReportImageModel) then) =
      _$ReportImageModelCopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$ReportImageModelCopyWithImpl<$Res>
    implements $ReportImageModelCopyWith<$Res> {
  _$ReportImageModelCopyWithImpl(this._value, this._then);

  final ReportImageModel _value;
  // ignore: unused_field
  final $Res Function(ReportImageModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportImageModelCopyWith<$Res>
    implements $ReportImageModelCopyWith<$Res> {
  factory _$ReportImageModelCopyWith(
          _ReportImageModel value, $Res Function(_ReportImageModel) then) =
      __$ReportImageModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$ReportImageModelCopyWithImpl<$Res>
    extends _$ReportImageModelCopyWithImpl<$Res>
    implements _$ReportImageModelCopyWith<$Res> {
  __$ReportImageModelCopyWithImpl(
      _ReportImageModel _value, $Res Function(_ReportImageModel) _then)
      : super(_value, (v) => _then(v as _ReportImageModel));

  @override
  _ReportImageModel get _value => super._value as _ReportImageModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_ReportImageModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportImageModel implements _ReportImageModel {
  const _$_ReportImageModel({required this.id, required this.url});

  factory _$_ReportImageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportImageModelFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'ReportImageModel(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportImageModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ReportImageModelCopyWith<_ReportImageModel> get copyWith =>
      __$ReportImageModelCopyWithImpl<_ReportImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportImageModelToJson(this);
  }
}

abstract class _ReportImageModel implements ReportImageModel {
  const factory _ReportImageModel({required int id, required String url}) =
      _$_ReportImageModel;

  factory _ReportImageModel.fromJson(Map<String, dynamic> json) =
      _$_ReportImageModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportImageModelCopyWith<_ReportImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
