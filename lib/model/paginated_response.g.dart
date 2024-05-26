// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResponseImpl<T> _$$PaginatedResponseImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$PaginatedResponseImpl<T>(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      nextUrl: json['next_url'] as String,
    );

Map<String, dynamic> _$$PaginatedResponseImplToJson<T>(
        _$PaginatedResponseImpl<T> instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'next_url': instance.nextUrl,
    };
