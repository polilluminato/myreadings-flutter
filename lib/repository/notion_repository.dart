import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myreadings/models/notion_page.dart';

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse(
          '${const String.fromEnvironment('NOTION_BASE_URL')}/${const String.fromEnvironment('NOTION_DB_BOOKS')}/query'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader:
            'Bearer ${const String.fromEnvironment('NOTION_SECRET_KEY')}',
        'Notion-Version': const String.fromEnvironment('NOTION_API_VERSION')
      },
      body: '{"page_size": 100}',
    );
    debugPrint(response.toString());
    debugPrint(response.body.toString());

    final responseBodyParsed = json.decode(response.body);
    debugPrint(responseBodyParsed.toString());
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
