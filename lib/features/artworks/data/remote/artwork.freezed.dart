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
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtworkCopyWith<Artwork> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtworkCopyWith<$Res> {
  factory $ArtworkCopyWith(Artwork value, $Res Function(Artwork) then) =
      _$ArtworkCopyWithImpl<$Res, Artwork>;
  @useResult
  $Res call({int id, String title});
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
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtworkImplCopyWith<$Res> implements $ArtworkCopyWith<$Res> {
  factory _$$ArtworkImplCopyWith(
          _$ArtworkImpl value, $Res Function(_$ArtworkImpl) then) =
      __$$ArtworkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
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
    Object? title = null,
  }) {
    return _then(_$ArtworkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtworkImpl implements _Artwork {
  const _$ArtworkImpl({required this.id, required this.title});

  factory _$ArtworkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtworkImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'Artwork(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtworkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

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
  const factory _Artwork({required final int id, required final String title}) =
      _$ArtworkImpl;

  factory _Artwork.fromJson(Map<String, dynamic> json) = _$ArtworkImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ArtworkImplCopyWith<_$ArtworkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
