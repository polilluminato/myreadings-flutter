// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:myreadings/app/app.dart';
import 'package:myreadings/app/env.dart';
import 'package:myreadings/provider/service_locator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase supabaseIstance = await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseAnonKey,
  );

  setupLocator(supabaseIstance);

  usePathUrlStrategy();

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}
