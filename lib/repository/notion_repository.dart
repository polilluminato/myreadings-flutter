import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:myreadings/models/notion_page.dart';
import 'package:myreadings/utils/request_headers.dart' as request_headers;

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse(
          '${dotenv.env["NOTION_BASE_URL"]}/${dotenv.env["NOTION_DB_BOOKS"]}/query'),
      headers: request_headers.getNotionHeaders(),
      body: '{"page_size": 100}',
    );

    final responseBodyParsed = json.decode(response.body);
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
