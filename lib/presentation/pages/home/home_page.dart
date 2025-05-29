import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myreadings/presentation/pages/home/book_list.dart';
import 'package:myreadings/utils/platform_utils.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Reading List",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.code),
            tooltip: 'GitHub Repo',
            onPressed: () => openExternalURL(
                "https://github.com/polilluminato/myreadings-flutter"),
          ),
          IconButton(
            icon: Icon(Icons.language),
            tooltip: 'My Website',
            onPressed: () => openExternalURL("https://www.albertobonacina.com"),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: BookList(),
      ),
    );
  }
}
