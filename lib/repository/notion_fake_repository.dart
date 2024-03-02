import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:myreadings/models/notion_page.dart';

class NotionFakeRepository {
  NotionFakeRepository();

  Future<List<NotionPage>?> getBookList() async {
    var fakeResponse =
        await rootBundle.loadString('assets/json/notion_response.json');

    Map<String, dynamic> responseBodyParsed = json.decode(fakeResponse);
    return responseBodyParsed["results"]
        .map<NotionPage>((json) => NotionPage.fromJson(json))
        .toList();
  }
}
