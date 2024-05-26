import '../../../data/dio_client.dart';
import '../../../locator.dart';
import '../../../model/paginated_response.dart';
import 'artworks_repository.dart';

class ArtworksRepositoryImpl implements ArtworksRepository {
  final String _pathPrefix = "artworks";

  @override
  Future<PaginatedResponse<String>> getArtworks() async {
    var response = await locator.get<DioClient>().dio.get(_pathPrefix);
    return PaginatedResponse.fromJson(response.data["pagination"]);
  }
}
