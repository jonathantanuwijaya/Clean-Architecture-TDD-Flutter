// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseEntity _$BaseEntityFromJson(Map<String, dynamic> json) => BaseEntity(
      resultCount: json['resultCount'] as int?,
      results: json['results'],
    );

Map<String, dynamic> _$BaseEntityToJson(BaseEntity instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };
