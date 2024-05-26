// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtworkResponse _$ArtworkResponseFromJson(Map<String, dynamic> json) {
  return _ArtworkResponse.fromJson(json);
}

/// @nodoc
mixin _$ArtworkResponse {
  Pagination get pagination => throw _privateConstructorUsedError;
  List<Artwork> get artworks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkResponseCopyWith<ArtworkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkResponseCopyWith<$Res> {
  factory $ArtworkResponseCopyWith(
          ArtworkResponse value, $Res Function(ArtworkResponse) then) =
      _$ArtworkResponseCopyWithImpl<$Res, ArtworkResponse>;
  @useResult
  $Res call({Pagination pagination, List<Artwork> artworks});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$ArtworkResponseCopyWithImpl<$Res, $Val extends ArtworkResponse>
    implements $ArtworkResponseCopyWith<$Res> {
  _$ArtworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? artworks = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      artworks: null == artworks
          ? _value.artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtworkResponseImplCopyWith<$Res>
    implements $ArtworkResponseCopyWith<$Res> {
  factory _$$ArtworkResponseImplCopyWith(_$ArtworkResponseImpl value,
          $Res Function(_$ArtworkResponseImpl) then) =
      __$$ArtworkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination pagination, List<Artwork> artworks});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$ArtworkResponseImplCopyWithImpl<$Res>
    extends _$ArtworkResponseCopyWithImpl<$Res, _$ArtworkResponseImpl>
    implements _$$ArtworkResponseImplCopyWith<$Res> {
  __$$ArtworkResponseImplCopyWithImpl(
      _$ArtworkResponseImpl _value, $Res Function(_$ArtworkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? artworks = null,
  }) {
    return _then(_$ArtworkResponseImpl(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      artworks: null == artworks
          ? _value._artworks
          : artworks // ignore: cast_nullable_to_non_nullable
              as List<Artwork>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtworkResponseImpl implements _ArtworkResponse {
  const _$ArtworkResponseImpl(
      {required this.pagination, required final List<Artwork> artworks})
      : _artworks = artworks;

  factory _$ArtworkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkResponseImplFromJson(json);

  @override
  final Pagination pagination;
  final List<Artwork> _artworks;
  @override
  List<Artwork> get artworks {
    if (_artworks is EqualUnmodifiableListView) return _artworks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artworks);
  }

  @override
  String toString() {
    return 'ArtworkResponse(pagination: $pagination, artworks: $artworks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkResponseImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._artworks, _artworks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_artworks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkResponseImplCopyWith<_$ArtworkResponseImpl> get copyWith =>
      __$$ArtworkResponseImplCopyWithImpl<_$ArtworkResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkResponseImplToJson(
      this,
    );
  }
}

abstract class _ArtworkResponse implements ArtworkResponse {
  const factory _ArtworkResponse(
      {required final Pagination pagination,
      required final List<Artwork> artworks}) = _$ArtworkResponseImpl;

  factory _ArtworkResponse.fromJson(Map<String, dynamic> json) =
      _$ArtworkResponseImpl.fromJson;

  @override
  Pagination get pagination;
  @override
  List<Artwork> get artworks;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkResponseImplCopyWith<_$ArtworkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
