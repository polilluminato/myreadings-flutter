import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  const StatusChip(
      {super.key, required this.progress, required this.isFinished});

  final int progress;
  final bool isFinished;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Chip(
      label: Text(
        isFinished ? "#finished" : "#planned",
        style: textTheme.labelSmall,
      ),
      backgroundColor: isFinished ? Colors.green[900] : Colors.grey[800],
      padding: const EdgeInsets.all(0),
    );
  }
}
