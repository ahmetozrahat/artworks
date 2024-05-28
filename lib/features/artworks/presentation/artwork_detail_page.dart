import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../core/helpers/extensions/context_extensions.dart';
import '../../../core/helpers/helpers.dart';
import '../data/remote/artwork.dart';

class ArtworkDetailPage extends StatefulWidget {
  final Artwork artwork;
  const ArtworkDetailPage({
    super.key,
    required this.artwork,
  });

  static const String routeName = "artwork_detail_page";

  @override
  State<ArtworkDetailPage> createState() => _ArtworkDetailPageState();
}

class _ArtworkDetailPageState extends State<ArtworkDetailPage> {
  Widget _buildImage() => widget.artwork.imageId != null
      ? Hero(
          tag: widget.artwork.id,
          child: SizedBox(
            width: double.infinity,
            child: Image.network(
              Helpers.getArtworkImageUrl(widget.artwork.imageId!),
              semanticLabel: widget.artwork.thumbnail?.altText ?? "",
              fit: BoxFit.fitWidth,
            ),
          ),
        )
      : const Text("Hata");

  Widget _buildTitle() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Text(
          widget.artwork.title ?? "",
          style: context.textTheme.headlineLarge,
        ),
      );

  Widget _buildDate() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Text(
          widget.artwork.dateDisplay ?? "",
          style: context.textTheme.bodyLarge!.copyWith(
            color: context.colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
      );

  Widget _buildArtist() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Text(
          widget.artwork.artistDisplay ?? "",
          style: context.textTheme.bodyLarge!.copyWith(
            color: context.colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
      );

  Widget _buildDescription() => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: HtmlWidget(
          widget.artwork.description ?? "",
          textStyle: context.textTheme.bodyLarge,
        ),
      );

  Widget _buildUi() => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(),
              _buildTitle(),
              _buildDate(),
              _buildArtist(),
              _buildDescription(),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("artwork_details".tr()),
      ),
      body: _buildUi(),
    );
  }
}
