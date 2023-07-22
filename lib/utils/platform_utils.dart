import 'package:url_launcher/url_launcher.dart';

void openExternalURL(String urlToLaunch) async {
  if (!await launchUrl(
    Uri.parse(urlToLaunch),
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $urlToLaunch');
  }
}
