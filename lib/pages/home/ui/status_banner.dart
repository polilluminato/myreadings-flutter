import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

class StatusBanner extends StatelessWidget {
  const StatusBanner(
      {super.key, required this.progress, required this.isFinished});

  final int progress;
  final bool isFinished;

  Color getBannerColor() {
    if (isFinished) {
      return Colors.green[900] ?? Colors.green;
    } else {
      return Colors.grey[800] ?? Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return CornerBanner(
      bannerPosition: CornerBannerPosition.topLeft,
      bannerColor: getBannerColor(),
      child: Text(
        isFinished ? "#finished" : "#planned",
        style: textTheme.labelSmall,
      ),
    );
  }
}
