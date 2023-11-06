// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_property_text_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotionPropertyTextContentImpl _$$NotionPropertyTextContentImplFromJson(
        Map<String, dynamic> json) =>
    _$NotionPropertyTextContentImpl(
      content: json['content'] as String,
      link: json['link'] == null
          ? null
          : NotionPropertyTextContentUrl.fromJson(
              json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotionPropertyTextContentImplToJson(
        _$NotionPropertyTextContentImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'link': instance.link,
    };
