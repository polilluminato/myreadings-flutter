import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myreadings/env/env.dart';
import 'package:myreadings/models/notion_page.dart';
import 'package:myreadings/utils/request_headers.dart' as request_headers;

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse('${Env.notionBaseUrl}/${Env.notionDbBooks}/query'),
      headers: request_headers.getNotionHeaders(),
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
