// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notion_property_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotionPropertyDate _$NotionPropertyDateFromJson(Map<String, dynamic> json) {
  return _NotionPropertyDate.fromJson(json);
}

/// @nodoc
mixin _$NotionPropertyDate {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotionPropertyDateCopyWith<NotionPropertyDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionPropertyDateCopyWith<$Res> {
  factory $NotionPropertyDateCopyWith(
          NotionPropertyDate value, $Res Function(NotionPropertyDate) then) =
      _$NotionPropertyDateCopyWithImpl<$Res, NotionPropertyDate>;
  @useResult
  $Res call({String? start, String? end, String? timezone});
}

/// @nodoc
class _$NotionPropertyDateCopyWithImpl<$Res, $Val extends NotionPropertyDate>
    implements $NotionPropertyDateCopyWith<$Res> {
  _$NotionPropertyDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotionPropertyDateImplCopyWith<$Res>
    implements $NotionPropertyDateCopyWith<$Res> {
  factory _$$NotionPropertyDateImplCopyWith(_$NotionPropertyDateImpl value,
          $Res Function(_$NotionPropertyDateImpl) then) =
      __$$NotionPropertyDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? start, String? end, String? timezone});
}

/// @nodoc
class __$$NotionPropertyDateImplCopyWithImpl<$Res>
    extends _$NotionPropertyDateCopyWithImpl<$Res, _$NotionPropertyDateImpl>
    implements _$$NotionPropertyDateImplCopyWith<$Res> {
  __$$NotionPropertyDateImplCopyWithImpl(_$NotionPropertyDateImpl _value,
      $Res Function(_$NotionPropertyDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$NotionPropertyDateImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotionPropertyDateImpl implements _NotionPropertyDate {
  const _$NotionPropertyDateImpl({this.start, this.end, this.timezone});

  factory _$NotionPropertyDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotionPropertyDateImplFromJson(json);

  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'NotionPropertyDate(start: $start, end: $end, timezone: $timezone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotionPropertyDateImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotionPropertyDateImplCopyWith<_$NotionPropertyDateImpl> get copyWith =>
      __$$NotionPropertyDateImplCopyWithImpl<_$NotionPropertyDateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotionPropertyDateImplToJson(
      this,
    );
  }
}

abstract class _NotionPropertyDate implements NotionPropertyDate {
  const factory _NotionPropertyDate(
      {final String? start,
      final String? end,
      final String? timezone}) = _$NotionPropertyDateImpl;

  factory _NotionPropertyDate.fromJson(Map<String, dynamic> json) =
      _$NotionPropertyDateImpl.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$NotionPropertyDateImplCopyWith<_$NotionPropertyDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
