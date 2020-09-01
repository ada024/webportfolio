part of 'filter_bloc.dart';

@freezed
abstract class FilterEvent with _$FilterEvent {
  const factory FilterEvent.update(Project project) = _Update;
  const factory FilterEvent.filterByTag(String tag) = _FilterByTag;
  const factory FilterEvent.clearFilters() = _ClearFilters;
  const factory FilterEvent.errorFromProject() = _ErrorFromProject;
}

// @immutable
// abstract class FilteredBlogEvent {
//   const FilteredBlogEvent();
// }

// class UpdateFilteredBlog extends FilteredBlogEvent {
//   const UpdateFilteredBlog(this.blog);

//   final Blog blog;

//   @override
//   String toString() => 'UpdateFilteredBlog';
// }

// class FilterByTag extends FilteredBlogEvent {
//   const FilterByTag(this.tagFilter);

//   final String tagFilter;

//   @override
//   String toString() => 'FilterByTag';
// }

// class ClearFilters extends FilteredBlogEvent {
//   @override
//   String toString() => 'ClearFilters';
// }
