part of 'filter_bloc.dart';

@freezed
abstract class FilterEvent with _$FilterEvent {
  const factory FilterEvent.update(Project project) = _Update;
  const factory FilterEvent.filterByTag(String tag) = _FilterByTag;
  const factory FilterEvent.clearFilters() = _ClearFilters;
  const factory FilterEvent.errorFromProject() = _ErrorFromProject;
}