import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myreadings/models/notion_page.dart';

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse(const String.fromEnvironment('WORKER_URL')),
      body: '{"page_size":100,'
          '"sorts":['
          '{"property":"Finished","direction":"ascending"},'
          '{"property":"Progress","direction":"descending"},'
          '{"property":"Date","direction":"descending"}'
          ']}',
    );

    Map<String, dynamic> responseBodyParsed = json.decode(response.body);
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
