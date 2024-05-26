import 'package:flutter/material.dart';

import 'features/artworks/artworks_page.dart';

class Routes {
  static Map<String, StatefulWidget Function(dynamic)> routes(
      BuildContext context) {
    return {
      ArtworksPage.routeName: (context) => const ArtworksPage(),
    };
  }
}
