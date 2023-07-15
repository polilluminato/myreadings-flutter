import 'package:flutter/material.dart';
import 'package:myreadings/models/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Text(book.title);
  }
}
