// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectEventTearOff {
  const _$ProjectEventTearOff();

// ignore: unused_element
  _ShowAllStarted showAllStarted() {
    return const _ShowAllStarted();
  }

// ignore: unused_element
  _Fetch fetch() {
    return const _Fetch();
  }

// ignore: unused_element
  _ProjectsReceived projectsReceived(
      Either<ProjectFailure, KtList<Project>> failureOrNotes) {
    return _ProjectsReceived(
      failureOrNotes,
    );
  }
}

// ignore: unused_element
const $ProjectEvent = _$ProjectEventTearOff();

mixin _$ProjectEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showAllStarted(),
    @required Result fetch(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrNotes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showAllStarted(),
    Result fetch(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrNotes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showAllStarted(_ShowAllStarted value),
    @required Result fetch(_Fetch value),
    @required Result projectsReceived(_ProjectsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showAllStarted(_ShowAllStarted value),
    Result fetch(_Fetch value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  });
}

abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res>;
}

class _$ProjectEventCopyWithImpl<$Res> implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  final ProjectEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEvent) _then;
}

abstract class _$ShowAllStartedCopyWith<$Res> {
  factory _$ShowAllStartedCopyWith(
          _ShowAllStarted value, $Res Function(_ShowAllStarted) then) =
      __$ShowAllStartedCopyWithImpl<$Res>;
}

class __$ShowAllStartedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$ShowAllStartedCopyWith<$Res> {
  __$ShowAllStartedCopyWithImpl(
      _ShowAllStarted _value, $Res Function(_ShowAllStarted) _then)
      : super(_value, (v) => _then(v as _ShowAllStarted));

  @override
  _ShowAllStarted get _value => super._value as _ShowAllStarted;
}

class _$_ShowAllStarted implements _ShowAllStarted {
  const _$_ShowAllStarted();

  @override
  String toString() {
    return 'ProjectEvent.showAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showAllStarted(),
    @required Result fetch(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrNotes),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return showAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showAllStarted(),
    Result fetch(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAllStarted != null) {
      return showAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showAllStarted(_ShowAllStarted value),
    @required Result fetch(_Fetch value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return showAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showAllStarted(_ShowAllStarted value),
    Result fetch(_Fetch value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showAllStarted != null) {
      return showAllStarted(this);
    }
    return orElse();
  }
}

abstract class _ShowAllStarted implements ProjectEvent {
  const factory _ShowAllStarted() = _$_ShowAllStarted;
}

abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

class __$FetchCopyWithImpl<$Res> extends _$ProjectEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'ProjectEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showAllStarted(),
    @required Result fetch(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrNotes),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showAllStarted(),
    Result fetch(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showAllStarted(_ShowAllStarted value),
    @required Result fetch(_Fetch value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showAllStarted(_ShowAllStarted value),
    Result fetch(_Fetch value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ProjectEvent {
  const factory _Fetch() = _$_Fetch;
}

abstract class _$ProjectsReceivedCopyWith<$Res> {
  factory _$ProjectsReceivedCopyWith(
          _ProjectsReceived value, $Res Function(_ProjectsReceived) then) =
      __$ProjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProjectFailure, KtList<Project>> failureOrNotes});
}

class __$ProjectsReceivedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$ProjectsReceivedCopyWith<$Res> {
  __$ProjectsReceivedCopyWithImpl(
      _ProjectsReceived _value, $Res Function(_ProjectsReceived) _then)
      : super(_value, (v) => _then(v as _ProjectsReceived));

  @override
  _ProjectsReceived get _value => super._value as _ProjectsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_ProjectsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<ProjectFailure, KtList<Project>>,
    ));
  }
}

class _$_ProjectsReceived implements _ProjectsReceived {
  const _$_ProjectsReceived(this.failureOrNotes)
      : assert(failureOrNotes != null);

  @override
  final Either<ProjectFailure, KtList<Project>> failureOrNotes;

  @override
  String toString() {
    return 'ProjectEvent.projectsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith =>
      __$ProjectsReceivedCopyWithImpl<_ProjectsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showAllStarted(),
    @required Result fetch(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrNotes),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return projectsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showAllStarted(),
    Result fetch(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrNotes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showAllStarted(_ShowAllStarted value),
    @required Result fetch(_Fetch value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(showAllStarted != null);
    assert(fetch != null);
    assert(projectsReceived != null);
    return projectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showAllStarted(_ShowAllStarted value),
    Result fetch(_Fetch value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProjectsReceived implements ProjectEvent {
  const factory _ProjectsReceived(
          Either<ProjectFailure, KtList<Project>> failureOrNotes) =
      _$_ProjectsReceived;

  Either<ProjectFailure, KtList<Project>> get failureOrNotes;
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith;
}

class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(KtList<Project> project) {
    return _Loaded(
      project,
    );
  }

// ignore: unused_element
  _Error error(ProjectFailure projectFailure) {
    return _Error(
      projectFailure,
    );
  }
}

// ignore: unused_element
const $ProjectState = _$ProjectStateTearOff();

mixin _$ProjectState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(KtList<Project> project),
    @required Result error(ProjectFailure projectFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(KtList<Project> project),
    Result error(ProjectFailure projectFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
}

class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProjectState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(KtList<Project> project),
    @required Result error(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(KtList<Project> project),
    Result error(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProjectState.loading()';
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
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(KtList<Project> project),
    @required Result error(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(KtList<Project> project),
    Result error(ProjectFailure projectFailure),
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
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProjectState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<Project> project});
}

class __$LoadedCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object project = freezed,
  }) {
    return _then(_Loaded(
      project == freezed ? _value.project : project as KtList<Project>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.project) : assert(project != null);

  @override
  final KtList<Project> project;

  @override
  String toString() {
    return 'ProjectState.loaded(project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.project, project) ||
                const DeepCollectionEquality().equals(other.project, project)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(project);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(KtList<Project> project),
    @required Result error(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(project);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(KtList<Project> project),
    Result error(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProjectState {
  const factory _Loaded(KtList<Project> project) = _$_Loaded;

  KtList<Project> get project;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ProjectFailure projectFailure});

  $ProjectFailureCopyWith<$Res> get projectFailure;
}

class __$ErrorCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object projectFailure = freezed,
  }) {
    return _then(_Error(
      projectFailure == freezed
          ? _value.projectFailure
          : projectFailure as ProjectFailure,
    ));
  }

  @override
  $ProjectFailureCopyWith<$Res> get projectFailure {
    if (_value.projectFailure == null) {
      return null;
    }
    return $ProjectFailureCopyWith<$Res>(_value.projectFailure, (value) {
      return _then(_value.copyWith(projectFailure: value));
    });
  }
}

class _$_Error implements _Error {
  const _$_Error(this.projectFailure) : assert(projectFailure != null);

  @override
  final ProjectFailure projectFailure;

  @override
  String toString() {
    return 'ProjectState.error(projectFailure: $projectFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.projectFailure, projectFailure) ||
                const DeepCollectionEquality()
                    .equals(other.projectFailure, projectFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectFailure);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(KtList<Project> project),
    @required Result error(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(projectFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(KtList<Project> project),
    Result error(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(projectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProjectState {
  const factory _Error(ProjectFailure projectFailure) = _$_Error;

  ProjectFailure get projectFailure;
  _$ErrorCopyWith<_Error> get copyWith;
}
