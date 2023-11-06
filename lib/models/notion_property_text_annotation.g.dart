// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_property_text_annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotionPropertyTextAnnotationImpl _$$NotionPropertyTextAnnotationImplFromJson(
        Map<String, dynamic> json) =>
    _$NotionPropertyTextAnnotationImpl(
      bold: json['bold'] as bool,
      italic: json['italic'] as bool,
      strikethrough: json['strikethrough'] as bool,
      underline: json['underline'] as bool,
      code: json['code'] as bool,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$NotionPropertyTextAnnotationImplToJson(
        _$NotionPropertyTextAnnotationImpl instance) =>
    <String, dynamic>{
      'bold': instance.bold,
      'italic': instance.italic,
      'strikethrough': instance.strikethrough,
      'underline': instance.underline,
      'code': instance.code,
      'color': instance.color,
    };
