import 'package:flutter/material.dart';
import 'package:myreadings/models/book.dart';
import 'package:myreadings/pages/home/ui/status_banner.dart';
import 'package:myreadings/utils/platform_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Card(
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
                          percent: book.progress / 100,
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
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber[300],
                                foregroundColor: Colors.black87),
                            onPressed: () => openExternalURL(book.link),
                            child: const Text("Buy on Amazon"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        if (book.isFinished || book.progress == 0)
          StatusBanner(
            progress: book.progress,
            isFinished: book.isFinished,
          ),
      ],
    );
  }
}
