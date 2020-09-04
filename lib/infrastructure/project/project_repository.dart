import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/project_failure.dart';
import 'package:webportfolio/infrastructure/project/project_api.dart';

import '../../domain/project/i_project_repository.dart';

@prod
@Injectable(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  final ProjectApi _projectApi = ProjectApi('data.json');

  @override
  Future<Either<ProjectFailure, Project>> getProjectData() async {
    try {
      final data = await _projectApi.fetchData();
      final project = Project.fromJson(data);
      return right(project);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const ProjectFailure.serverError());
    }
  }
}
