// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_property_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotionPropertyTextImpl _$$NotionPropertyTextImplFromJson(
        Map<String, dynamic> json) =>
    _$NotionPropertyTextImpl(
      type: json['type'] as String,
      text: json['text'] == null
          ? null
          : NotionPropertyTextContent.fromJson(
              json['text'] as Map<String, dynamic>),
      annotations: json['annotations'] == null
          ? null
          : NotionPropertyTextAnnotation.fromJson(
              json['annotations'] as Map<String, dynamic>),
      plainText: json['plain_text'] as String?,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$NotionPropertyTextImplToJson(
        _$NotionPropertyTextImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'annotations': instance.annotations,
      'plain_text': instance.plainText,
      'href': instance.href,
    };
