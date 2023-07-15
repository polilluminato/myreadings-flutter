// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_page_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionPageProperty _$$_NotionPagePropertyFromJson(
        Map<String, dynamic> json) =>
    _$_NotionPageProperty(
      id: json['id'] as String,
      type: json['type'] as String,
      title: (json['title'] as List<dynamic>?)
          ?.map((e) => NotionPropertyText.fromJson(e as Map<String, dynamic>))
          .toList(),
      richText: (json['rich_text'] as List<dynamic>?)
          ?.map((e) => NotionPropertyText.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkbox: json['checkbox'] as bool?,
      number: json['number'] as int?,
      url: json['url'] as String?,
      date: json['date'] == null
          ? null
          : NotionPropertyDate.fromJson(json['date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotionPagePropertyToJson(
        _$_NotionPageProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title?.map((e) => e.toJson()).toList(),
      'rich_text': instance.richText?.map((e) => e.toJson()).toList(),
      'checkbox': instance.checkbox,
      'number': instance.number,
      'url': instance.url,
      'date': instance.date?.toJson(),
    };
