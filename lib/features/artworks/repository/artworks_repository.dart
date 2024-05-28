import '../data/remote/artwork_response.dart';

abstract class ArtworksRepository {
  Future<ArtworkResponse> getArtworks(int page);
}
