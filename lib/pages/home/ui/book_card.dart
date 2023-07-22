import 'package:flutter/material.dart';
import 'package:myreadings/models/book.dart';
import 'package:myreadings/pages/home/ui/status_chip.dart';
import 'package:myreadings/utils/platform_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // Image border
                  child: Image.network(book.cover),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: textTheme.bodyLarge,
                  ),
                  Text(
                    book.author,
                    style: textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (!book.isFinished && book.progress > 0)
                    LinearPercentIndicator(
                      percent: 50 / 100,
                      progressColor: colorScheme.onPrimary,
                      lineHeight: 8,
                      barRadius: const Radius.circular(8),
                      trailing: Text(
                        "${book.progress.toString()} %",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  if (book.isFinished || book.progress == 0)
                    StatusChip(
                      progress: book.progress,
                      isFinished: book.isFinished,
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () => openExternalURL(book.link),
                    child: const Text("Buy on Amazon"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
