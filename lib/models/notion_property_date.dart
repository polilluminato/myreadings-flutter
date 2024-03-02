import 'package:freezed_annotation/freezed_annotation.dart';

part 'notion_property_date.freezed.dart';
part 'notion_property_date.g.dart';

@freezed
class NotionPropertyDate with _$NotionPropertyDate {
  const factory NotionPropertyDate({
    String? start,
    String? end,
    String? timezone,
  }) = _NotionPropertyDate;

  factory NotionPropertyDate.fromJson(Map<String, dynamic> json) =>
      _$NotionPropertyDateFromJson(json);
}
