// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel({
    required int id,
    required String title,
    required String author,
    @JsonKey(name: 'progressive_page') required int progressivePage,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'finished_date') DateTime? finishedDate,
    required String link,
    required String cover,
    required bool finished,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, Object?> json) =>
      _$BookModelFromJson(json);
}
