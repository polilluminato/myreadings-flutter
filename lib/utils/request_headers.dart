import 'dart:io';

import 'package:myreadings/env/env.dart';

Map<String, String> getNotionHeaders() {
  return {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer ${Env.notionSecretKey}',
    'Notion-Version': Env.notionApiVersion
  };
}
