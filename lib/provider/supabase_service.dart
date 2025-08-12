import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final Supabase _supabase;

  SupabaseService(this._supabase);

  SupabaseClient get client => _supabase.client;
}
