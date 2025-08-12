import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myreadings/enums/windowsize_enum.dart';
import 'package:myreadings/models/book_model.dart';
import 'package:myreadings/presentation/pages/home/ui/book_card.dart';
import 'package:myreadings/provider/service_locator.dart';
import 'package:myreadings/repository/book_repository.dart';
import 'package:myreadings/utils/screen_utils.dart';

class BookList extends ConsumerStatefulWidget {
  const BookList({super.key});

  @override
  ConsumerState<BookList> createState() => _BookListState();
}

class _BookListState extends ConsumerState<BookList> {
  late final Future<List<BookModel>> bookList;

  @override
  void initState() {
    super.initState();
    bookList = DI<BookRepository>().getBookList();
  }

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
  Widget build(BuildContext context) {
    double screenSizeWidth = getScreenWidth(context);

    return FutureBuilder(
        future: bookList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AlignedGridView.count(
              crossAxisCount: _getColumnsNumber(screenSizeWidth),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                return BookCard(book: snapshot.data![index]);
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });

    /*return AsyncValueWidget<List<BookModel>?>(
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
    );*/
  }
}
