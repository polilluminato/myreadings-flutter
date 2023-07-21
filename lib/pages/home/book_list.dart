import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myreadings/enums/windowsize_enum.dart';
import 'package:myreadings/models/book.dart';
import 'package:myreadings/models/notion_page.dart';
import 'package:myreadings/pages/home/ui/book_card.dart';
import 'package:myreadings/provider/AsyncValueWidget.dart';
import 'package:myreadings/provider/notion_provider.dart';
import 'package:myreadings/utils/screen_utils.dart' as screen_utils;

class BookList extends ConsumerWidget {
  const BookList({Key? key}) : super(key: key);

  int _getColumnsNumber(double screenSizeWidth) {
    if (screenSizeWidth <= WindowSizeEnum.tabletPortrait.width) {
      return 1;
    } else if (WindowSizeEnum.tabletPortrait.width < screenSizeWidth &&
        screenSizeWidth <= WindowSizeEnum.tabletLandscape.width) {
      return 2;
    } else if (WindowSizeEnum.tabletLandscape.width < screenSizeWidth &&
        screenSizeWidth <= WindowSizeEnum.desktop.width) {
      return 3;
    } else if (screenSizeWidth > WindowSizeEnum.desktop.width) {
      return 4;
    }
    return 1;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookList = ref.watch(bookListProvider);
    double screenSizeWidth = screen_utils.getScreenWidth(context);

    return AsyncValueWidget<List<NotionPage>?>(
      value: bookList,
      data: (data) {
        return AlignedGridView.count(
          crossAxisCount: _getColumnsNumber(screenSizeWidth),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          itemCount: data!.length,
          itemBuilder: (_, index) {
            return BookCard(book: Book.fromNotionPage(data[index]));
          },
        );
      },
    );
  }
}
