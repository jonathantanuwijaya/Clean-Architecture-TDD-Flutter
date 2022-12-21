// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$$_MovieDtoFromJson(Map<String, dynamic> json) => _$_MovieDto(
      collectionId: json['collectionId'] as int? ?? 0,
      artistName: json['artistName'] as String,
      trackName: json['trackName'] as String,
      artworkUrl100: json['artworkUrl100'] as String,
      shortDescription: json['shortDescription'] as String? ?? '-',
      longDescription: json['longDescription'] as String,
    );

Map<String, dynamic> _$$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'artistName': instance.artistName,
      'trackName': instance.trackName,
      'artworkUrl100': instance.artworkUrl100,
      'shortDescription': instance.shortDescription,
      'longDescription': instance.longDescription,
    };
