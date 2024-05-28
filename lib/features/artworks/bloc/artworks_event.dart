part of 'artworks_bloc.dart';

@freezed
class ArtworksEvent with _$ArtworksEvent {
  const factory ArtworksEvent.fetchArtworks(int page) = _FetchArtworks;
}
