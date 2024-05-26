import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Pagination({
    required int total,
    required int limit,
    required int offset,
    required int totalPages,
    required int currentPage,
    required String nextUrl,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
