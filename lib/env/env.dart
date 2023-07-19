import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'NOTION_BASE_URL', obfuscate: true)
  static final notionBaseUrl = _Env.notionBaseUrl;

  @EnviedField(varName: 'NOTION_SECRET_KEY', obfuscate: true)
  static final notionSecretKey = _Env.notionSecretKey;

  @EnviedField(varName: 'NOTION_DB_BOOKS', obfuscate: true)
  static final notionDbBooks = _Env.notionDbBooks;

  @EnviedField(varName: 'NOTION_API_VERSION', obfuscate: true)
  static final notionApiVersion = _Env.notionApiVersion;
}
