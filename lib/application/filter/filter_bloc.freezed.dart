// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FilterEventTearOff {
  const _$FilterEventTearOff();

// ignore: unused_element
  _Update update(Project project) {
    return _Update(
      project,
    );
  }

// ignore: unused_element
  _FilterByTag filterByTag(String tag) {
    return _FilterByTag(
      tag,
    );
  }

// ignore: unused_element
  _ClearFilters clearFilters() {
    return const _ClearFilters();
  }

// ignore: unused_element
  _ErrorFromProject errorFromProject() {
    return const _ErrorFromProject();
  }
}

// ignore: unused_element
const $FilterEvent = _$FilterEventTearOff();

mixin _$FilterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(Project project),
    @required Result filterByTag(String tag),
    @required Result clearFilters(),
    @required Result errorFromProject(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(Project project),
    Result filterByTag(String tag),
    Result clearFilters(),
    Result errorFromProject(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(_Update value),
    @required Result filterByTag(_FilterByTag value),
    @required Result clearFilters(_ClearFilters value),
    @required Result errorFromProject(_ErrorFromProject value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(_Update value),
    Result filterByTag(_FilterByTag value),
    Result clearFilters(_ClearFilters value),
    Result errorFromProject(_ErrorFromProject value),
    @required Result orElse(),
  });
}

abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

class __$UpdateCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object project = freezed,
  }) {
    return _then(_Update(
      project == freezed ? _value.project : project as Project,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get project {
    if (_value.project == null) {
      return null;
    }
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

class _$_Update with DiagnosticableTreeMixin implements _Update {
  const _$_Update(this.project) : assert(project != null);

  @override
  final Project project;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterEvent.update(project: $project)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterEvent.update'))
      ..add(DiagnosticsProperty('project', project));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(Project project),
    @required Result filterByTag(String tag),
    @required Result clearFilters(),
    @required Result errorFromProject(),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return update(project);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(Project project),
    Result filterByTag(String tag),
    Result clearFilters(),
    Result errorFromProject(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(_Update value),
    @required Result filterByTag(_FilterByTag value),
    @required Result clearFilters(_ClearFilters value),
    @required Result errorFromProject(_ErrorFromProject value),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(_Update value),
    Result filterByTag(_FilterByTag value),
    Result clearFilters(_ClearFilters value),
    Result errorFromProject(_ErrorFromProject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements FilterEvent {
  const factory _Update(Project project) = _$_Update;

  Project get project;
  _$UpdateCopyWith<_Update> get copyWith;
}

abstract class _$FilterByTagCopyWith<$Res> {
  factory _$FilterByTagCopyWith(
          _FilterByTag value, $Res Function(_FilterByTag) then) =
      __$FilterByTagCopyWithImpl<$Res>;
  $Res call({String tag});
}

class __$FilterByTagCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$FilterByTagCopyWith<$Res> {
  __$FilterByTagCopyWithImpl(
      _FilterByTag _value, $Res Function(_FilterByTag) _then)
      : super(_value, (v) => _then(v as _FilterByTag));

  @override
  _FilterByTag get _value => super._value as _FilterByTag;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_FilterByTag(
      tag == freezed ? _value.tag : tag as String,
    ));
  }
}

class _$_FilterByTag with DiagnosticableTreeMixin implements _FilterByTag {
  const _$_FilterByTag(this.tag) : assert(tag != null);

  @override
  final String tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterEvent.filterByTag(tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterEvent.filterByTag'))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterByTag &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$FilterByTagCopyWith<_FilterByTag> get copyWith =>
      __$FilterByTagCopyWithImpl<_FilterByTag>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(Project project),
    @required Result filterByTag(String tag),
    @required Result clearFilters(),
    @required Result errorFromProject(),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return filterByTag(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(Project project),
    Result filterByTag(String tag),
    Result clearFilters(),
    Result errorFromProject(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filterByTag != null) {
      return filterByTag(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(_Update value),
    @required Result filterByTag(_FilterByTag value),
    @required Result clearFilters(_ClearFilters value),
    @required Result errorFromProject(_ErrorFromProject value),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return filterByTag(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(_Update value),
    Result filterByTag(_FilterByTag value),
    Result clearFilters(_ClearFilters value),
    Result errorFromProject(_ErrorFromProject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filterByTag != null) {
      return filterByTag(this);
    }
    return orElse();
  }
}

abstract class _FilterByTag implements FilterEvent {
  const factory _FilterByTag(String tag) = _$_FilterByTag;

  String get tag;
  _$FilterByTagCopyWith<_FilterByTag> get copyWith;
}

abstract class _$ClearFiltersCopyWith<$Res> {
  factory _$ClearFiltersCopyWith(
          _ClearFilters value, $Res Function(_ClearFilters) then) =
      __$ClearFiltersCopyWithImpl<$Res>;
}

class __$ClearFiltersCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$ClearFiltersCopyWith<$Res> {
  __$ClearFiltersCopyWithImpl(
      _ClearFilters _value, $Res Function(_ClearFilters) _then)
      : super(_value, (v) => _then(v as _ClearFilters));

  @override
  _ClearFilters get _value => super._value as _ClearFilters;
}

class _$_ClearFilters with DiagnosticableTreeMixin implements _ClearFilters {
  const _$_ClearFilters();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterEvent.clearFilters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FilterEvent.clearFilters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(Project project),
    @required Result filterByTag(String tag),
    @required Result clearFilters(),
    @required Result errorFromProject(),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return clearFilters();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(Project project),
    Result filterByTag(String tag),
    Result clearFilters(),
    Result errorFromProject(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearFilters != null) {
      return clearFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(_Update value),
    @required Result filterByTag(_FilterByTag value),
    @required Result clearFilters(_ClearFilters value),
    @required Result errorFromProject(_ErrorFromProject value),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return clearFilters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(_Update value),
    Result filterByTag(_FilterByTag value),
    Result clearFilters(_ClearFilters value),
    Result errorFromProject(_ErrorFromProject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearFilters != null) {
      return clearFilters(this);
    }
    return orElse();
  }
}

abstract class _ClearFilters implements FilterEvent {
  const factory _ClearFilters() = _$_ClearFilters;
}

abstract class _$ErrorFromProjectCopyWith<$Res> {
  factory _$ErrorFromProjectCopyWith(
          _ErrorFromProject value, $Res Function(_ErrorFromProject) then) =
      __$ErrorFromProjectCopyWithImpl<$Res>;
}

class __$ErrorFromProjectCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$ErrorFromProjectCopyWith<$Res> {
  __$ErrorFromProjectCopyWithImpl(
      _ErrorFromProject _value, $Res Function(_ErrorFromProject) _then)
      : super(_value, (v) => _then(v as _ErrorFromProject));

  @override
  _ErrorFromProject get _value => super._value as _ErrorFromProject;
}

class _$_ErrorFromProject
    with DiagnosticableTreeMixin
    implements _ErrorFromProject {
  const _$_ErrorFromProject();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterEvent.errorFromProject()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterEvent.errorFromProject'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorFromProject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(Project project),
    @required Result filterByTag(String tag),
    @required Result clearFilters(),
    @required Result errorFromProject(),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return errorFromProject();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(Project project),
    Result filterByTag(String tag),
    Result clearFilters(),
    Result errorFromProject(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorFromProject != null) {
      return errorFromProject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(_Update value),
    @required Result filterByTag(_FilterByTag value),
    @required Result clearFilters(_ClearFilters value),
    @required Result errorFromProject(_ErrorFromProject value),
  }) {
    assert(update != null);
    assert(filterByTag != null);
    assert(clearFilters != null);
    assert(errorFromProject != null);
    return errorFromProject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(_Update value),
    Result filterByTag(_FilterByTag value),
    Result clearFilters(_ClearFilters value),
    Result errorFromProject(_ErrorFromProject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorFromProject != null) {
      return errorFromProject(this);
    }
    return orElse();
  }
}

abstract class _ErrorFromProject implements FilterEvent {
  const factory _ErrorFromProject() = _$_ErrorFromProject;
}

class _$FilterProjectStateTearOff {
  const _$FilterProjectStateTearOff();

// ignore: unused_element
  _Error error() {
    return const _Error();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(Project filteredBlog, String tagFilter) {
    return _Loaded(
      filteredBlog,
      tagFilter,
    );
  }
}

// ignore: unused_element
const $FilterProjectState = _$FilterProjectStateTearOff();

mixin _$FilterProjectState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(),
    @required Result loading(),
    @required Result loaded(Project filteredBlog, String tagFilter),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(),
    Result loading(),
    Result loaded(Project filteredBlog, String tagFilter),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  });
}

abstract class $FilterProjectStateCopyWith<$Res> {
  factory $FilterProjectStateCopyWith(
          FilterProjectState value, $Res Function(FilterProjectState) then) =
      _$FilterProjectStateCopyWithImpl<$Res>;
}

class _$FilterProjectStateCopyWithImpl<$Res>
    implements $FilterProjectStateCopyWith<$Res> {
  _$FilterProjectStateCopyWithImpl(this._value, this._then);

  final FilterProjectState _value;
  // ignore: unused_field
  final $Res Function(FilterProjectState) _then;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res> extends _$FilterProjectStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterProjectState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FilterProjectState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(),
    @required Result loading(),
    @required Result loaded(Project filteredBlog, String tagFilter),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(),
    Result loading(),
    Result loaded(Project filteredBlog, String tagFilter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FilterProjectState {
  const factory _Error() = _$_Error;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res>
    extends _$FilterProjectStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterProjectState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FilterProjectState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(),
    @required Result loading(),
    @required Result loaded(Project filteredBlog, String tagFilter),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(),
    Result loading(),
    Result loaded(Project filteredBlog, String tagFilter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FilterProjectState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Project filteredBlog, String tagFilter});

  $ProjectCopyWith<$Res> get filteredBlog;
}

class __$LoadedCopyWithImpl<$Res> extends _$FilterProjectStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object filteredBlog = freezed,
    Object tagFilter = freezed,
  }) {
    return _then(_Loaded(
      filteredBlog == freezed ? _value.filteredBlog : filteredBlog as Project,
      tagFilter == freezed ? _value.tagFilter : tagFilter as String,
    ));
  }

  @override
  $ProjectCopyWith<$Res> get filteredBlog {
    if (_value.filteredBlog == null) {
      return null;
    }
    return $ProjectCopyWith<$Res>(_value.filteredBlog, (value) {
      return _then(_value.copyWith(filteredBlog: value));
    });
  }
}

class _$_Loaded with DiagnosticableTreeMixin implements _Loaded {
  const _$_Loaded(this.filteredBlog, this.tagFilter)
      : assert(filteredBlog != null),
        assert(tagFilter != null);

  @override
  final Project filteredBlog;
  @override
  final String tagFilter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterProjectState.loaded(filteredBlog: $filteredBlog, tagFilter: $tagFilter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterProjectState.loaded'))
      ..add(DiagnosticsProperty('filteredBlog', filteredBlog))
      ..add(DiagnosticsProperty('tagFilter', tagFilter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.filteredBlog, filteredBlog) ||
                const DeepCollectionEquality()
                    .equals(other.filteredBlog, filteredBlog)) &&
            (identical(other.tagFilter, tagFilter) ||
                const DeepCollectionEquality()
                    .equals(other.tagFilter, tagFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filteredBlog) ^
      const DeepCollectionEquality().hash(tagFilter);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result error(),
    @required Result loading(),
    @required Result loaded(Project filteredBlog, String tagFilter),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(filteredBlog, tagFilter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result error(),
    Result loading(),
    Result loaded(Project filteredBlog, String tagFilter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(filteredBlog, tagFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result error(_Error value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(error != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result error(_Error value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FilterProjectState {
  const factory _Loaded(Project filteredBlog, String tagFilter) = _$_Loaded;

  Project get filteredBlog;
  String get tagFilter;
  _$LoadedCopyWith<_Loaded> get copyWith;
}
