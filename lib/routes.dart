import 'package:flutter/material.dart';

import 'features/artworks/data/remote/artwork.dart';
import 'features/artworks/presentation/artwork_detail_page.dart';
import 'features/artworks/presentation/artworks_page.dart';

class Routes {
  static Map<String, StatefulWidget Function(dynamic)> routes(
      BuildContext context) {
    return {
      ArtworksPage.routeName: (context) => const ArtworksPage(),
      ArtworkDetailPage.routeName: (context) => ArtworkDetailPage(
            artwork: ModalRoute.of(context)!.settings.arguments as Artwork,
          ),
    };
  }
}
