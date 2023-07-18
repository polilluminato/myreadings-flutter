import 'dart:io';

Map<String, String> getNotionHeaders() {
  return {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.authorizationHeader:
        'Bearer ${const String.fromEnvironment("NOTION_SECRET_KEY")}',
    'Notion-Version': const String.fromEnvironment("NOTION_API_VERSION")
  };
}
