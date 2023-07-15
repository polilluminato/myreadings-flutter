import 'package:myreadings/models/notion_page.dart';
import 'package:myreadings/repository/notion_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notion_provider.g.dart';

@riverpod
Future<List<NotionPage>?> bookList(BookListRef ref) async {
  return NotionRepository().getBookList();
}
