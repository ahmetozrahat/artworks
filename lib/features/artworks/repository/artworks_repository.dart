import '../../../model/paginated_response.dart';

abstract class ArtworksRepository {
  Future<PaginatedResponse<String>> getArtworks();
}
