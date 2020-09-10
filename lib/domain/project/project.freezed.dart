// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectTearOff {
  const _$ProjectTearOff();

// ignore: unused_element
  _Project call(
      {@required UniqueId id,
      @required ProjectDesc desc,
      @required ProjectTag tag,
      @required ProjectThumbnail thumbnail,
      @required ProjectTitle title,
      @required ProjectUri uri}) {
    return _Project(
      id: id,
      desc: desc,
      tag: tag,
      thumbnail: thumbnail,
      title: title,
      uri: uri,
    );
  }
}

// ignore: unused_element
const $Project = _$ProjectTearOff();

mixin _$Project {
  UniqueId get id;
  ProjectDesc get desc;
  ProjectTag get tag;
  ProjectThumbnail get thumbnail;
  ProjectTitle get title;
  ProjectUri get uri;

  $ProjectCopyWith<Project> get copyWith;
}

abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ProjectDesc desc,
      ProjectTag tag,
      ProjectThumbnail thumbnail,
      ProjectTitle title,
      ProjectUri uri});
}

class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object id = freezed,
    Object desc = freezed,
    Object tag = freezed,
    Object thumbnail = freezed,
    Object title = freezed,
    Object uri = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      desc: desc == freezed ? _value.desc : desc as ProjectDesc,
      tag: tag == freezed ? _value.tag : tag as ProjectTag,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail as ProjectThumbnail,
      title: title == freezed ? _value.title : title as ProjectTitle,
      uri: uri == freezed ? _value.uri : uri as ProjectUri,
    ));
  }
}

abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ProjectDesc desc,
      ProjectTag tag,
      ProjectThumbnail thumbnail,
      ProjectTitle title,
      ProjectUri uri});
}

class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object id = freezed,
    Object desc = freezed,
    Object tag = freezed,
    Object thumbnail = freezed,
    Object title = freezed,
    Object uri = freezed,
  }) {
    return _then(_Project(
      id: id == freezed ? _value.id : id as UniqueId,
      desc: desc == freezed ? _value.desc : desc as ProjectDesc,
      tag: tag == freezed ? _value.tag : tag as ProjectTag,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail as ProjectThumbnail,
      title: title == freezed ? _value.title : title as ProjectTitle,
      uri: uri == freezed ? _value.uri : uri as ProjectUri,
    ));
  }
}

class _$_Project extends _Project {
  const _$_Project(
      {@required this.id,
      @required this.desc,
      @required this.tag,
      @required this.thumbnail,
      @required this.title,
      @required this.uri})
      : assert(id != null),
        assert(desc != null),
        assert(tag != null),
        assert(thumbnail != null),
        assert(title != null),
        assert(uri != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ProjectDesc desc;
  @override
  final ProjectTag tag;
  @override
  final ProjectThumbnail thumbnail;
  @override
  final ProjectTitle title;
  @override
  final ProjectUri uri;

  @override
  String toString() {
    return 'Project(id: $id, desc: $desc, tag: $tag, thumbnail: $thumbnail, title: $title, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uri);

  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project extends Project {
  const _Project._() : super._();
  const factory _Project(
      {@required UniqueId id,
      @required ProjectDesc desc,
      @required ProjectTag tag,
      @required ProjectThumbnail thumbnail,
      @required ProjectTitle title,
      @required ProjectUri uri}) = _$_Project;

  @override
  UniqueId get id;
  @override
  ProjectDesc get desc;
  @override
  ProjectTag get tag;
  @override
  ProjectThumbnail get thumbnail;
  @override
  ProjectTitle get title;
  @override
  ProjectUri get uri;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}
