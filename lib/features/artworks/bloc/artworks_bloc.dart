import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../locator.dart';
import '../data/remote/artwork_response.dart';
import '../repository/artworks_repository.dart';

part 'artworks_bloc.freezed.dart';
part 'artworks_event.dart';
part 'artworks_state.dart';

class ArtworksBloc extends Bloc<ArtworksEvent, ArtworksState> {
  ArtworksBloc() : super(const _Initial()) {
    on<_FetchArtworks>(onFetchArtworksEvent);
  }

  FutureOr<void> onFetchArtworksEvent(
      _FetchArtworks event, Emitter<ArtworksState> emit) async {
    emit(const ArtworksState.loading());

    try {
      var response = await locator.get<ArtworksRepository>().getArtworks();
      emit(ArtworksState.success(artworkResponse: response));
    } on DioException catch (e) {
      emit(ArtworksState.failure(errorMessage: e.error.toString()));
    } catch (e) {
      emit(ArtworksState.failure(errorMessage: e.toString()));
    }
  }
}
