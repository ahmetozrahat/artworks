import 'artwork.dart';
import '../../../../model/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artwork_response.freezed.dart';
part 'artwork_response.g.dart';

@freezed
class ArtworkResponse with _$ArtworkResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtworkResponse({
    required Pagination pagination,
    required List<Artwork> artworks,
  }) = _ArtworkResponse;

  factory ArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtworkResponseFromJson(json);
}
