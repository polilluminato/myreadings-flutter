// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notion_property_text_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotionPropertyTextContent _$NotionPropertyTextContentFromJson(
    Map<String, dynamic> json) {
  return _NotionPropertyTextContent.fromJson(json);
}

/// @nodoc
mixin _$NotionPropertyTextContent {
  String get content => throw _privateConstructorUsedError;
  NotionPropertyTextContentUrl? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotionPropertyTextContentCopyWith<NotionPropertyTextContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionPropertyTextContentCopyWith<$Res> {
  factory $NotionPropertyTextContentCopyWith(NotionPropertyTextContent value,
          $Res Function(NotionPropertyTextContent) then) =
      _$NotionPropertyTextContentCopyWithImpl<$Res, NotionPropertyTextContent>;
  @useResult
  $Res call({String content, NotionPropertyTextContentUrl? link});

  $NotionPropertyTextContentUrlCopyWith<$Res>? get link;
}

/// @nodoc
class _$NotionPropertyTextContentCopyWithImpl<$Res,
        $Val extends NotionPropertyTextContent>
    implements $NotionPropertyTextContentCopyWith<$Res> {
  _$NotionPropertyTextContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as NotionPropertyTextContentUrl?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotionPropertyTextContentUrlCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $NotionPropertyTextContentUrlCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotionPropertyTextContentImplCopyWith<$Res>
    implements $NotionPropertyTextContentCopyWith<$Res> {
  factory _$$NotionPropertyTextContentImplCopyWith(
          _$NotionPropertyTextContentImpl value,
          $Res Function(_$NotionPropertyTextContentImpl) then) =
      __$$NotionPropertyTextContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, NotionPropertyTextContentUrl? link});

  @override
  $NotionPropertyTextContentUrlCopyWith<$Res>? get link;
}

/// @nodoc
class __$$NotionPropertyTextContentImplCopyWithImpl<$Res>
    extends _$NotionPropertyTextContentCopyWithImpl<$Res,
        _$NotionPropertyTextContentImpl>
    implements _$$NotionPropertyTextContentImplCopyWith<$Res> {
  __$$NotionPropertyTextContentImplCopyWithImpl(
      _$NotionPropertyTextContentImpl _value,
      $Res Function(_$NotionPropertyTextContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? link = freezed,
  }) {
    return _then(_$NotionPropertyTextContentImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as NotionPropertyTextContentUrl?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotionPropertyTextContentImpl implements _NotionPropertyTextContent {
  const _$NotionPropertyTextContentImpl({required this.content, this.link});

  factory _$NotionPropertyTextContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotionPropertyTextContentImplFromJson(json);

  @override
  final String content;
  @override
  final NotionPropertyTextContentUrl? link;

  @override
  String toString() {
    return 'NotionPropertyTextContent(content: $content, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotionPropertyTextContentImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotionPropertyTextContentImplCopyWith<_$NotionPropertyTextContentImpl>
      get copyWith => __$$NotionPropertyTextContentImplCopyWithImpl<
          _$NotionPropertyTextContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotionPropertyTextContentImplToJson(
      this,
    );
  }
}

abstract class _NotionPropertyTextContent implements NotionPropertyTextContent {
  const factory _NotionPropertyTextContent(
          {required final String content,
          final NotionPropertyTextContentUrl? link}) =
      _$NotionPropertyTextContentImpl;

  factory _NotionPropertyTextContent.fromJson(Map<String, dynamic> json) =
      _$NotionPropertyTextContentImpl.fromJson;

  @override
  String get content;
  @override
  NotionPropertyTextContentUrl? get link;
  @override
  @JsonKey(ignore: true)
  _$$NotionPropertyTextContentImplCopyWith<_$NotionPropertyTextContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
