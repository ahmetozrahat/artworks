import 'package:freezed_annotation/freezed_annotation.dart';

import 'thumbnail.dart';

part 'artwork.freezed.dart';
part 'artwork.g.dart';

@freezed
class Artwork with _$Artwork {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Artwork({
    required int id,
    required String title,
    required Thumbnail thumbnail,
    required String imageId,
    String? dateDisplay,
    String? artistTitle,
    String? artistDisplay,
    String? description,
  }) = _Artwork;

  factory Artwork.fromJson(Map<String, dynamic> json) =>
      _$ArtworkFromJson(json);
}
