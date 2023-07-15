import 'package:myreadings/models/notion_page.dart';

class Book {
  late String title;
  late DateTime createdTime;
  late DateTime lastEditedTime;

  Book();

  Book.fromNotionPage(NotionPage notionPage) {
    title = notionPage.properties!["Title"]!.title!.first.plainText != null
        ? notionPage.properties!["Title"]!.title!.first.plainText!.trim()
        : (notionPage.properties!["Title"]!.title!.first.text != null
            ? notionPage.properties!["Title"]!.title!.first.text!.content.trim()
            : "");

    createdTime = DateTime.parse(notionPage.createdTime);
    lastEditedTime = DateTime.parse(notionPage.lastEditedTime);
  }
}
