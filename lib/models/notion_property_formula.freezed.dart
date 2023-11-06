// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notion_property_formula.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotionPropertyFormula _$NotionPropertyFormulaFromJson(
    Map<String, dynamic> json) {
  return _NotionPropertyFormula.fromJson(json);
}

/// @nodoc
mixin _$NotionPropertyFormula {
  String? get type => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotionPropertyFormulaCopyWith<NotionPropertyFormula> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionPropertyFormulaCopyWith<$Res> {
  factory $NotionPropertyFormulaCopyWith(NotionPropertyFormula value,
          $Res Function(NotionPropertyFormula) then) =
      _$NotionPropertyFormulaCopyWithImpl<$Res, NotionPropertyFormula>;
  @useResult
  $Res call({String? type, int? number});
}

/// @nodoc
class _$NotionPropertyFormulaCopyWithImpl<$Res,
        $Val extends NotionPropertyFormula>
    implements $NotionPropertyFormulaCopyWith<$Res> {
  _$NotionPropertyFormulaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotionPropertyFormulaImplCopyWith<$Res>
    implements $NotionPropertyFormulaCopyWith<$Res> {
  factory _$$NotionPropertyFormulaImplCopyWith(
          _$NotionPropertyFormulaImpl value,
          $Res Function(_$NotionPropertyFormulaImpl) then) =
      __$$NotionPropertyFormulaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, int? number});
}

/// @nodoc
class __$$NotionPropertyFormulaImplCopyWithImpl<$Res>
    extends _$NotionPropertyFormulaCopyWithImpl<$Res,
        _$NotionPropertyFormulaImpl>
    implements _$$NotionPropertyFormulaImplCopyWith<$Res> {
  __$$NotionPropertyFormulaImplCopyWithImpl(_$NotionPropertyFormulaImpl _value,
      $Res Function(_$NotionPropertyFormulaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? number = freezed,
  }) {
    return _then(_$NotionPropertyFormulaImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotionPropertyFormulaImpl implements _NotionPropertyFormula {
  const _$NotionPropertyFormulaImpl({this.type, this.number});

  factory _$NotionPropertyFormulaImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotionPropertyFormulaImplFromJson(json);

  @override
  final String? type;
  @override
  final int? number;

  @override
  String toString() {
    return 'NotionPropertyFormula(type: $type, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotionPropertyFormulaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotionPropertyFormulaImplCopyWith<_$NotionPropertyFormulaImpl>
      get copyWith => __$$NotionPropertyFormulaImplCopyWithImpl<
          _$NotionPropertyFormulaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotionPropertyFormulaImplToJson(
      this,
    );
  }
}

abstract class _NotionPropertyFormula implements NotionPropertyFormula {
  const factory _NotionPropertyFormula(
      {final String? type, final int? number}) = _$NotionPropertyFormulaImpl;

  factory _NotionPropertyFormula.fromJson(Map<String, dynamic> json) =
      _$NotionPropertyFormulaImpl.fromJson;

  @override
  String? get type;
  @override
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$NotionPropertyFormulaImplCopyWith<_$NotionPropertyFormulaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
