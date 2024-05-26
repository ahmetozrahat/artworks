// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtworkImpl _$$ArtworkImplFromJson(Map<String, dynamic> json) =>
    _$ArtworkImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      imageId: json['image_id'] as String,
      dateDisplay: json['date_display'] as String?,
      artistTitle: json['artist_title'] as String?,
    );

Map<String, dynamic> _$$ArtworkImplToJson(_$ArtworkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'image_id': instance.imageId,
      'date_display': instance.dateDisplay,
      'artist_title': instance.artistTitle,
    };
