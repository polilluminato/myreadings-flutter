import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:myreadings/models/book.dart';
import 'package:myreadings/utils/platform_utils.dart';
import 'package:myreadings/utils/screen_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.book,
  });

  final Book book;

  Color _getBannerColor() {
    if (book.isFinished) {
      return Colors.green[900] ?? Colors.green;
    } else {
      return Colors.grey[800] ?? Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Banner(
      message: book.isFinished ? "#finished" : "#planned",
      location: BannerLocation.topStart,
      color: _getBannerColor(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ExtendedImage.network(
                    book.cover,
                    fit: BoxFit.fill,
                    cache: true,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: textTheme.bodyLarge!.copyWith(fontSize: 22),
                    ),
                    Text(
                      "by ${book.author}\n${book.totPages} pages",
                      style: textTheme.bodyMedium,
                    ),
                    gapH(8),
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
                    gapH(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () => openExternalURL(book.link),
                          child: const Text("Buy on Amazon"),
                        ),
                      ],
                    ),
                    gapH(8),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
