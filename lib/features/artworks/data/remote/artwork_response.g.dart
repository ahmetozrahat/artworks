// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artwork_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtworkResponseImpl _$$ArtworkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtworkResponseImpl(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      artworks: (json['artworks'] as List<dynamic>)
          .map((e) => Artwork.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtworkResponseImplToJson(
        _$ArtworkResponseImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'artworks': instance.artworks,
    };
