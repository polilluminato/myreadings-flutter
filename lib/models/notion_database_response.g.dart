// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_database_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotionDatabaseResponseImpl<T> _$$NotionDatabaseResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$NotionDatabaseResponseImpl<T>(
      object: json['object'] as String?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      nextCursor: json['nextCursor'] as String?,
      hasMore: json['hasMore'] as bool?,
      type: json['type'] as String?,
      developerSurvey: json['developerSurvey'] as String?,
    );

Map<String, dynamic> _$$NotionDatabaseResponseImplToJson<T>(
  _$NotionDatabaseResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': instance.object,
      'results': instance.results?.map(toJsonT).toList(),
      'nextCursor': instance.nextCursor,
      'hasMore': instance.hasMore,
      'type': instance.type,
      'developerSurvey': instance.developerSurvey,
    };
