import 'package:flutter/material.dart';

import '../../../locator.dart';
import '../repository/artworks_repository.dart';

class ArtworksPage extends StatefulWidget {
  const ArtworksPage({super.key});

  static const String routeName = 'artworks_page';

  @override
  State<ArtworksPage> createState() => _ArtworksPageState();
}

class _ArtworksPageState extends State<ArtworksPage> {
  @override
  void initState() {
    super.initState();
    locator.get<ArtworksRepository>().getArtworks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Artworks App"),
      ),
    );
  }
}
