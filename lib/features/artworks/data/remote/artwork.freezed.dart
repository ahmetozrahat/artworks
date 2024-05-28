// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artwork _$ArtworkFromJson(Map<String, dynamic> json) {
  return _Artwork.fromJson(json);
}

/// @nodoc
mixin _$Artwork {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Thumbnail? get thumbnail => throw _privateConstructorUsedError;
  String? get imageId => throw _privateConstructorUsedError;
  String? get dateDisplay => throw _privateConstructorUsedError;
  String? get artistTitle => throw _privateConstructorUsedError;
  String? get artistDisplay => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkCopyWith<Artwork> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkCopyWith<$Res> {
  factory $ArtworkCopyWith(Artwork value, $Res Function(Artwork) then) =
      _$ArtworkCopyWithImpl<$Res, Artwork>;
  @useResult
  $Res call(
      {int id,
      String? title,
      Thumbnail? thumbnail,
      String? imageId,
      String? dateDisplay,
      String? artistTitle,
      String? artistDisplay,
      String? description});

  $ThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$ArtworkCopyWithImpl<$Res, $Val extends Artwork>
    implements $ArtworkCopyWith<$Res> {
  _$ArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? imageId = freezed,
    Object? dateDisplay = freezed,
    Object? artistTitle = freezed,
    Object? artistDisplay = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDisplay: freezed == dateDisplay
          ? _value.dateDisplay
          : dateDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      artistTitle: freezed == artistTitle
          ? _value.artistTitle
          : artistTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      artistDisplay: freezed == artistDisplay
          ? _value.artistDisplay
          : artistDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ThumbnailCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtworkImplCopyWith<$Res> implements $ArtworkCopyWith<$Res> {
  factory _$$ArtworkImplCopyWith(
          _$ArtworkImpl value, $Res Function(_$ArtworkImpl) then) =
      __$$ArtworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      Thumbnail? thumbnail,
      String? imageId,
      String? dateDisplay,
      String? artistTitle,
      String? artistDisplay,
      String? description});

  @override
  $ThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$ArtworkImplCopyWithImpl<$Res>
    extends _$ArtworkCopyWithImpl<$Res, _$ArtworkImpl>
    implements _$$ArtworkImplCopyWith<$Res> {
  __$$ArtworkImplCopyWithImpl(
      _$ArtworkImpl _value, $Res Function(_$ArtworkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? imageId = freezed,
    Object? dateDisplay = freezed,
    Object? artistTitle = freezed,
    Object? artistDisplay = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ArtworkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDisplay: freezed == dateDisplay
          ? _value.dateDisplay
          : dateDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      artistTitle: freezed == artistTitle
          ? _value.artistTitle
          : artistTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      artistDisplay: freezed == artistDisplay
          ? _value.artistDisplay
          : artistDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtworkImpl implements _Artwork {
  const _$ArtworkImpl(
      {required this.id,
      this.title,
      this.thumbnail,
      this.imageId,
      this.dateDisplay,
      this.artistTitle,
      this.artistDisplay,
      this.description});

  factory _$ArtworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final Thumbnail? thumbnail;
  @override
  final String? imageId;
  @override
  final String? dateDisplay;
  @override
  final String? artistTitle;
  @override
  final String? artistDisplay;
  @override
  final String? description;

  @override
  String toString() {
    return 'Artwork(id: $id, title: $title, thumbnail: $thumbnail, imageId: $imageId, dateDisplay: $dateDisplay, artistTitle: $artistTitle, artistDisplay: $artistDisplay, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.dateDisplay, dateDisplay) ||
                other.dateDisplay == dateDisplay) &&
            (identical(other.artistTitle, artistTitle) ||
                other.artistTitle == artistTitle) &&
            (identical(other.artistDisplay, artistDisplay) ||
                other.artistDisplay == artistDisplay) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, imageId,
      dateDisplay, artistTitle, artistDisplay, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtworkImplCopyWith<_$ArtworkImpl> get copyWith =>
      __$$ArtworkImplCopyWithImpl<_$ArtworkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtworkImplToJson(
      this,
    );
  }
}

abstract class _Artwork implements Artwork {
  const factory _Artwork(
      {required final int id,
      final String? title,
      final Thumbnail? thumbnail,
      final String? imageId,
      final String? dateDisplay,
      final String? artistTitle,
      final String? artistDisplay,
      final String? description}) = _$ArtworkImpl;

  factory _Artwork.fromJson(Map<String, dynamic> json) = _$ArtworkImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  Thumbnail? get thumbnail;
  @override
  String? get imageId;
  @override
  String? get dateDisplay;
  @override
  String? get artistTitle;
  @override
  String? get artistDisplay;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkImplCopyWith<_$ArtworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
