import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/helpers/extensions/context_extensions.dart';
import '../bloc/artworks_bloc.dart';
import 'artwork_detail_page.dart';
import 'widgets/artwork_card.dart';

class ArtworksPage extends StatefulWidget {
  const ArtworksPage({super.key});

  static const String routeName = 'artworks_page';

  @override
  State<ArtworksPage> createState() => _ArtworksPageState();
}

class _ArtworksPageState extends State<ArtworksPage> {
  final _artworksBloc = ArtworksBloc();

  Widget _buildUi() => _artworksBloc.state.maybeWhen(
        success: (artworkResponse) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: RefreshIndicator(
              onRefresh: () async =>
                  _artworksBloc.add(const ArtworksEvent.fetchArtworks()),
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: artworkResponse.artworks.length,
                itemBuilder: (context, index) {
                  var artwork = artworkResponse.artworks[index];
                  return ArtworkCard(
                    artwork: artwork,
                    onPressed: (id) => context.navigator.pushNamed(
                        ArtworkDetailPage.routeName,
                        arguments: artwork),
                  );
                },
              ),
            ),
          ),
        ),
        orElse: () => Container(),
      );

  @override
  void initState() {
    super.initState();
    _artworksBloc.add(const ArtworksEvent.fetchArtworks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Artworks App"),
      ),
      body: BlocBuilder<ArtworksBloc, ArtworksState>(
        bloc: _artworksBloc,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (artworkResponse) => _buildUi(),
            failure: (errorMessage) => const Center(
              child: Text("Hata"),
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
