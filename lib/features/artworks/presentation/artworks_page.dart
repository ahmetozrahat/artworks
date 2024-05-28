import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/helpers/extensions/context_extensions.dart';
import '../bloc/artworks_bloc.dart';
import '../data/remote/artwork.dart';
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
  final PagingController<int, Artwork> _pagingController =
      PagingController(firstPageKey: 1);

  Widget _buildUi() => SafeArea(
        child: RefreshIndicator(
          onRefresh: () => Future.sync(
            () => _pagingController.refresh(),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PagedMasonryGridView.count(
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<Artwork>(
                itemBuilder: (context, item, index) => ArtworkCard(
                  artwork: item,
                  onPressed: (id) => context.navigator
                      .pushNamed(ArtworkDetailPage.routeName, arguments: item),
                ),
              ),
              crossAxisCount: 2,
            ),
          ),
        ),
      );

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _artworksBloc.add(ArtworksEvent.fetchArtworks(pageKey));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pagingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Artworks App"),
      ),
      body: BlocConsumer<ArtworksBloc, ArtworksState>(
        bloc: _artworksBloc,
        listener: (context, state) {
          state.maybeWhen(
            success: (artworkResponse) {
              final isLastPage = artworkResponse.artworks.length <
                  artworkResponse.pagination.limit;
              if (isLastPage) {
                _pagingController.appendLastPage(artworkResponse.artworks);
              } else {
                _pagingController.appendPage(artworkResponse.artworks,
                    artworkResponse.pagination.currentPage + 1);
              }
            },
            failure: (errorMessage) => _pagingController.error = errorMessage,
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            failure: (errorMessage) => Center(
              child: Text(errorMessage),
            ),
            orElse: () => _buildUi(),
          );
        },
      ),
    );
  }
}
