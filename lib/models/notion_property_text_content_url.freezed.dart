// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notion_property_text_content_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotionPropertyTextContentUrl _$NotionPropertyTextContentUrlFromJson(
    Map<String, dynamic> json) {
  return _NotionPropertyTextContentUrl.fromJson(json);
}

/// @nodoc
mixin _$NotionPropertyTextContentUrl {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotionPropertyTextContentUrlCopyWith<NotionPropertyTextContentUrl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionPropertyTextContentUrlCopyWith<$Res> {
  factory $NotionPropertyTextContentUrlCopyWith(
          NotionPropertyTextContentUrl value,
          $Res Function(NotionPropertyTextContentUrl) then) =
      _$NotionPropertyTextContentUrlCopyWithImpl<$Res,
          NotionPropertyTextContentUrl>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$NotionPropertyTextContentUrlCopyWithImpl<$Res,
        $Val extends NotionPropertyTextContentUrl>
    implements $NotionPropertyTextContentUrlCopyWith<$Res> {
  _$NotionPropertyTextContentUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotionPropertyTextContentUrlImplCopyWith<$Res>
    implements $NotionPropertyTextContentUrlCopyWith<$Res> {
  factory _$$NotionPropertyTextContentUrlImplCopyWith(
          _$NotionPropertyTextContentUrlImpl value,
          $Res Function(_$NotionPropertyTextContentUrlImpl) then) =
      __$$NotionPropertyTextContentUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$NotionPropertyTextContentUrlImplCopyWithImpl<$Res>
    extends _$NotionPropertyTextContentUrlCopyWithImpl<$Res,
        _$NotionPropertyTextContentUrlImpl>
    implements _$$NotionPropertyTextContentUrlImplCopyWith<$Res> {
  __$$NotionPropertyTextContentUrlImplCopyWithImpl(
      _$NotionPropertyTextContentUrlImpl _value,
      $Res Function(_$NotionPropertyTextContentUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$NotionPropertyTextContentUrlImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotionPropertyTextContentUrlImpl
    implements _NotionPropertyTextContentUrl {
  const _$NotionPropertyTextContentUrlImpl({required this.url});

  factory _$NotionPropertyTextContentUrlImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotionPropertyTextContentUrlImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'NotionPropertyTextContentUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotionPropertyTextContentUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotionPropertyTextContentUrlImplCopyWith<
          _$NotionPropertyTextContentUrlImpl>
      get copyWith => __$$NotionPropertyTextContentUrlImplCopyWithImpl<
          _$NotionPropertyTextContentUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotionPropertyTextContentUrlImplToJson(
      this,
    );
  }
}

abstract class _NotionPropertyTextContentUrl
    implements NotionPropertyTextContentUrl {
  const factory _NotionPropertyTextContentUrl({required final String url}) =
      _$NotionPropertyTextContentUrlImpl;

  factory _NotionPropertyTextContentUrl.fromJson(Map<String, dynamic> json) =
      _$NotionPropertyTextContentUrlImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$NotionPropertyTextContentUrlImplCopyWith<
          _$NotionPropertyTextContentUrlImpl>
      get copyWith => throw _privateConstructorUsedError;
}
