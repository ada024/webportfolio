part of 'project_bloc.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = Initial;
  const factory ProjectState.loading() = Loading;
  const factory ProjectState.error() = Error;
  const factory ProjectState.loaded(Project project, List<String> tags) = Loaded;
}

// @immutable
// abstract class BlogState {
//   const BlogState();
// }

// /// This is the default state
// class BlogLoading extends BlogState {
//   @override
//   String toString() => 'BlogLoading';
// }

// class BlogError extends BlogState {
//   @override
//   String toString() => 'BlogError';
// }

// class BlogLoaded extends BlogState {
//   const BlogLoaded(this.blog, this.tags) : super();

//   final Blog blog;
//   final List<String> tags;

//   @override
//   String toString() => 'BlogLoaded';
// }
