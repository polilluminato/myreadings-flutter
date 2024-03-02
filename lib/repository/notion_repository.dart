import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myreadings/models/notion_page.dart';

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse(
        const String.fromEnvironment('WORKER_URL'),
      ),
    );

    Map<String, dynamic> responseBodyParsed =
        jsonDecode(utf8.decode(response.bodyBytes));
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
