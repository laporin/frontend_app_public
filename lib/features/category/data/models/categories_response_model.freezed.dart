// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'categories_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesResponseModel _$CategoriesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoriesResponseModel.fromJson(json);
}

/// @nodoc
class _$CategoriesResponseModelTearOff {
  const _$CategoriesResponseModelTearOff();

  _CategoriesResponseModel call({required List<CategoryModel> data}) {
    return _CategoriesResponseModel(
      data: data,
    );
  }

  CategoriesResponseModel fromJson(Map<String, Object> json) {
    return CategoriesResponseModel.fromJson(json);
  }
}

/// @nodoc
const $CategoriesResponseModel = _$CategoriesResponseModelTearOff();

/// @nodoc
mixin _$CategoriesResponseModel {
  List<CategoryModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesResponseModelCopyWith<CategoriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesResponseModelCopyWith<$Res> {
  factory $CategoriesResponseModelCopyWith(CategoriesResponseModel value,
          $Res Function(CategoriesResponseModel) then) =
      _$CategoriesResponseModelCopyWithImpl<$Res>;
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class _$CategoriesResponseModelCopyWithImpl<$Res>
    implements $CategoriesResponseModelCopyWith<$Res> {
  _$CategoriesResponseModelCopyWithImpl(this._value, this._then);

  final CategoriesResponseModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
abstract class _$CategoriesResponseModelCopyWith<$Res>
    implements $CategoriesResponseModelCopyWith<$Res> {
  factory _$CategoriesResponseModelCopyWith(_CategoriesResponseModel value,
          $Res Function(_CategoriesResponseModel) then) =
      __$CategoriesResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class __$CategoriesResponseModelCopyWithImpl<$Res>
    extends _$CategoriesResponseModelCopyWithImpl<$Res>
    implements _$CategoriesResponseModelCopyWith<$Res> {
  __$CategoriesResponseModelCopyWithImpl(_CategoriesResponseModel _value,
      $Res Function(_CategoriesResponseModel) _then)
      : super(_value, (v) => _then(v as _CategoriesResponseModel));

  @override
  _CategoriesResponseModel get _value =>
      super._value as _CategoriesResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CategoriesResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesResponseModel implements _CategoriesResponseModel {
  const _$_CategoriesResponseModel({required this.data});

  factory _$_CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoriesResponseModelFromJson(json);

  @override
  final List<CategoryModel> data;

  @override
  String toString() {
    return 'CategoriesResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesResponseModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CategoriesResponseModelCopyWith<_CategoriesResponseModel> get copyWith =>
      __$CategoriesResponseModelCopyWithImpl<_CategoriesResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoriesResponseModelToJson(this);
  }
}

abstract class _CategoriesResponseModel implements CategoriesResponseModel {
  const factory _CategoriesResponseModel({required List<CategoryModel> data}) =
      _$_CategoriesResponseModel;

  factory _CategoriesResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesResponseModel.fromJson;

  @override
  List<CategoryModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoriesResponseModelCopyWith<_CategoriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
