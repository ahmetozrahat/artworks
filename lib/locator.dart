import 'package:get_it/get_it.dart';

import 'data/dio_client.dart';
import 'features/artworks/repository/artworks_repository.dart';
import 'features/artworks/repository/artworks_repository_impl.dart';

final locator = GetIt.instance;

void configureDependencies() {
  // Service registrations.
  locator.registerLazySingleton<DioClient>(() => DioClient());

  // Repository registrations.
  locator.registerLazySingleton<ArtworksRepository>(
      () => ArtworksRepositoryImpl());
}
