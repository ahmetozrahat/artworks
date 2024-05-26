import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PaginatedResponse({
    required int total,
    required int limit,
    required int offset,
    required int totalPages,
    required int currentPage,
    required String nextUrl,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedResponseFromJson(json);
}
