part of 'filter_bloc.dart';

@freezed
abstract class FilterProjectState with _$FilterProjectState {
  const factory FilterProjectState.error() = _Error;
  const factory FilterProjectState.loading() = _Loading;
  const factory FilterProjectState.loaded(Project filteredProject, String tagFilter) =
      _Loaded;
}
