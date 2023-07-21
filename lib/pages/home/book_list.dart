import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myreadings/models/book.dart';
import 'package:myreadings/models/notion_page.dart';
import 'package:myreadings/pages/home/ui/book_card.dart';
import 'package:myreadings/provider/AsyncValueWidget.dart';
import 'package:myreadings/provider/notion_provider.dart';

class BookList extends ConsumerWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookList = ref.watch(bookListProvider);

    return AsyncValueWidget<List<NotionPage>?>(
      value: bookList,
      data: (data) {
        return ListView.builder(
          itemCount: data!.length,
          itemBuilder: (BuildContext _, int index) {
            return BookCard(book: Book.fromNotionPage(data[index]));
          },
        );
      },
    );
  }
}
