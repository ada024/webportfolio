import 'package:dartz/dartz.dart';

import 'project.dart';
import 'project_failure.dart';

abstract class IProjectRepository {
  Future<Either<ProjectFailure, Project>> getProjectData();
}
