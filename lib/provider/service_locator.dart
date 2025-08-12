// ignore_for_file: non_constant_identifier_names

import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myreadings/provider/supabase_service.dart';
import 'package:myreadings/repository/book_repository.dart';

final DI = GetIt.I;

void setupLocator(Supabase supabaseIstance) async {
  DI
    ..registerSingleton<SupabaseService>(SupabaseService(supabaseIstance))
    ..registerLazySingleton<BookRepository>(() => BookRepository());
}
