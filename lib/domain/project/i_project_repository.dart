import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'project.dart';
import 'project_failure.dart';

abstract class IProjectRepository {
  Stream<Either<ProjectFailure, KtList<Project>>> watchAllProjects();
  Future<Either<ProjectFailure, KtList<Project>>> getProjectData();
  Future<Either<ProjectFailure, Unit>> create(Project project);
  Future<Either<ProjectFailure, Unit>> update(Project project);
}
