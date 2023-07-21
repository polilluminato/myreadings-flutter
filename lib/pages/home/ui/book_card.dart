import 'package:flutter/material.dart';
import 'package:myreadings/models/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    debugPrint("Finished: ${book.isFinished} - Progress: ${book.progress}"
        " - date: ${book.date} - Link: ${book.link}"
        " - author ${book.author} - cover: ${book.cover}");
    return Card(
      child: ListTile(
        leading: Image.network(book.cover),
        title: Text(book.title),
        subtitle: Text(book.author),
        trailing: ElevatedButton(onPressed: () {}, child: const Text("Buy")),
      ),
    );
  }
}
