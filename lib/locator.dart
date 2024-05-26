import 'package:get_it/get_it.dart';

import 'data/dio_client.dart';

final locator = GetIt.instance;

void configureDependencies() {
  // Service registrations.
  locator.registerLazySingleton<DioClient>(() => DioClient());

  // Repository registrations.
}
