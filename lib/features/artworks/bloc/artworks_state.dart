part of 'artworks_bloc.dart';

@freezed
class ArtworksState with _$ArtworksState {
  const factory ArtworksState.initial() = _Initial;

  const factory ArtworksState.loading() = _Loading;

  const factory ArtworksState.success({
    required ArtworkResponse artworkResponse,
  }) = _Success;

  const factory ArtworksState.failure({
    required String errorMessage,
  }) = _Failure;
}
