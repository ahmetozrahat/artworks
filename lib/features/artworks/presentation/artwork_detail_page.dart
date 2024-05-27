import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("artwork_details".tr()),
      ),
      body: Hero(
        tag: widget.artwork.id,
        child: SizedBox(
          width: double.infinity,
          child: Image.network(
            Helpers.getArtworkImageUrl(widget.artwork.imageId),
            semanticLabel: widget.artwork.thumbnail.altText,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
