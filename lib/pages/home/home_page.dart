import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myreadings/pages/home/book_list.dart';
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
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () => openExternalURL(
                    "https://github.com/polilluminato/myreadings-flutter"),
                child: const Text("Github Repo"),
              ),
              PopupMenuItem(
                onTap: () => openExternalURL("https://www.albertobonacina.com"),
                child: const Text("My Website"),
              ),
            ],
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: BookList(),
      ),
    );
  }
}
