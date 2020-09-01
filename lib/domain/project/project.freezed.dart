// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

class _$ProjectTearOff {
  const _$ProjectTearOff();

// ignore: unused_element
  _Project call(List<Tag> tags, List<PostData> pages) {
    return _Project(
      tags,
      pages,
    );
  }
}

// ignore: unused_element
const $Project = _$ProjectTearOff();

mixin _$Project {
  List<Tag> get tags;
  List<PostData> get pages;

  Map<String, dynamic> toJson();
  $ProjectCopyWith<Project> get copyWith;
}

abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call({List<Tag> tags, List<PostData> pages});
}

class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object tags = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed ? _value.tags : tags as List<Tag>,
      pages: pages == freezed ? _value.pages : pages as List<PostData>,
    ));
  }
}

abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call({List<Tag> tags, List<PostData> pages});
}

class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object tags = freezed,
    Object pages = freezed,
  }) {
    return _then(_Project(
      tags == freezed ? _value.tags : tags as List<Tag>,
      pages == freezed ? _value.pages : pages as List<PostData>,
    ));
  }
}

@JsonSerializable()
class _$_Project implements _Project {
  const _$_Project(this.tags, this.pages)
      : assert(tags != null),
        assert(pages != null);

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$_$_ProjectFromJson(json);

  @override
  final List<Tag> tags;
  @override
  final List<PostData> pages;

  @override
  String toString() {
    return 'Project(tags: $tags, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProjectToJson(this);
  }
}

abstract class _Project implements Project {
  const factory _Project(List<Tag> tags, List<PostData> pages) = _$_Project;

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  List<Tag> get tags;
  @override
  List<PostData> get pages;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}
