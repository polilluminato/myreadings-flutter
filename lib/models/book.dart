import 'package:myreadings/models/notion_page.dart';

class Book {
  late String title;
  late DateTime createdTime;
  late DateTime lastEditedTime;
  late bool isFinished;
  late String cover;
  late String date;
  late String author;
  late int progress;
  late String link;

  Book();

  Book.fromNotionPage(NotionPage notionPage) {
    title = notionPage.properties!["Title"]!.title!.first.plainText != null
        ? notionPage.properties!["Title"]!.title!.first.plainText!.trim()
        : (notionPage.properties!["Title"]!.title!.first.text != null
            ? notionPage.properties!["Title"]!.title!.first.text!.content.trim()
            : "");

    createdTime = DateTime.parse(notionPage.createdTime);
    lastEditedTime = DateTime.parse(notionPage.lastEditedTime);

    isFinished = notionPage.properties!["Finished"]!.checkbox ?? false;
    cover = notionPage.properties!["Cover"]!.url ?? "";
    date = notionPage.properties!["Date"]!.date != null
        ? notionPage.properties!["Date"]!.date!.start!
        : "";

    author = notionPage.properties!["Author"]!.richText!.first.plainText != null
        ? notionPage.properties!["Author"]!.richText!.first.plainText!.trim()
        : (notionPage.properties!["Author"]!.richText!.first.text != null
            ? notionPage.properties!["Author"]!.richText!.first.text!.content
                .trim()
            : "");

    progress = notionPage.properties!["Progress"]!.number ?? 0;
    link = notionPage.properties!["Link"]!.url ?? "";
  }
}
