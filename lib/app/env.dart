class Env {
  static String get supabaseUrl => const String.fromEnvironment("SUPABASE_URL");
  static String get supabaseAnonKey =>
      const String.fromEnvironment("SUPABASE_ANON_KEY");
}
