import 'package:freezed_annotation/freezed_annotation.dart';

part 'notion_property_formula.freezed.dart';
part 'notion_property_formula.g.dart';

@freezed
class NotionPropertyFormula with _$NotionPropertyFormula {
  const factory NotionPropertyFormula({
    String? type,
    int? number,
  }) = _NotionPropertyFormula;

  factory NotionPropertyFormula.fromJson(Map<String, dynamic> json) =>
      _$NotionPropertyFormulaFromJson(json);
}
