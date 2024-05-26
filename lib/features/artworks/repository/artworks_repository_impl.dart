import 'package:artworks/features/artworks/data/remote/artwork.dart';

import '../../../data/dio_client.dart';
import '../../../locator.dart';
import '../../../model/pagination.dart';
import '../data/remote/artwork_response.dart';
import 'artworks_repository.dart';

class ArtworksRepositoryImpl implements ArtworksRepository {
  final String _pathPrefix = "artworks";

  @override
  Future<ArtworkResponse> getArtworks() async {
    var response = await locator.get<DioClient>().dio.get(_pathPrefix);

    var pagination = Pagination.fromJson(response.data["pagination"]);
    List<Artwork> artworks = (response.data["data"] as List)
        .map((artwork) => Artwork.fromJson(artwork))
        .toList();

    return ArtworkResponse(pagination: pagination, artworks: artworks);
  }
}
