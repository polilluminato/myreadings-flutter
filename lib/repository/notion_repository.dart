import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myreadings/app/env.dart';
import 'package:myreadings/models/notion_page.dart';

class NotionRepository {
  NotionRepository();

  Future<List<NotionPage>?> getBookList() async {
    var response = await http.post(
      Uri.parse(
        Env.workerUrl,
      ),
    );

    Map<String, dynamic> responseBodyParsed =
        jsonDecode(utf8.decode(response.bodyBytes));
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
