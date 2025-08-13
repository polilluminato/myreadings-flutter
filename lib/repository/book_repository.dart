import 'package:myreadings/provider/supabase_service.dart';
import 'package:myreadings/models/book_model.dart';
import 'package:myreadings/provider/service_locator.dart';

class BookRepository {
  final _supabaseService = DI<SupabaseService>();

  BookRepository();

  Future<List<BookModel>> getBookList() async {
    final result = await _supabaseService.client
        .from('books')
        .select()
        .order('finished', ascending: true)
        .order('finished_date', ascending: false);
    return result.map((e) => BookModel.fromJson(e)).toList();
  }
}
