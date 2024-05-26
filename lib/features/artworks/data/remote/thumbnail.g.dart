// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThumbnailImpl _$$ThumbnailImplFromJson(Map<String, dynamic> json) =>
    _$ThumbnailImpl(
      lqip: json['lqip'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      altText: json['alt_text'] as String,
    );

Map<String, dynamic> _$$ThumbnailImplToJson(_$ThumbnailImpl instance) =>
    <String, dynamic>{
      'lqip': instance.lqip,
      'width': instance.width,
      'height': instance.height,
      'alt_text': instance.altText,
    };
