import 'package:json_annotation/json_annotation.dart';
part 'base_entity.g.dart';

@JsonSerializable()
class BaseEntity {
  final int? resultCount;
  final dynamic results;
  BaseEntity({
    this.resultCount,
    this.results,
  });
  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);
}
