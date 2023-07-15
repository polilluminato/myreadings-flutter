import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Map<String, String> getNotionHeaders() {
  return {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.authorizationHeader:
        'Bearer ${dotenv.env["NOTION_SECRET_KEY"]}',
    'Notion-Version': dotenv.env["NOTION_API_VERSION"]!
  };
}
