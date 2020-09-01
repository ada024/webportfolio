import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/project_failure.dart';
import 'package:webportfolio/domain/project/i_project_repository.dart';
import 'project_api.dart';

@dev
@Injectable(as: IProjectRepository)
class DevBlogRepository implements IProjectRepository {
//  final BlogApi _blogApi = BlogApi('$blogTestingUrl/index.json');
  final ProjectApi _projectApi = ProjectApi('assets/data.json');

  @override
  Future<Either<ProjectFailure, Project>> getProjectData() async {
    try {
      final data = await _projectApi.fetchData();
      //final blog = Blog.fromJson(data);
    //  final data = jsonDecode('assets/data.json') as Map<String, dynamic>;
      final blog = Project.fromJson(data);
      return right(blog);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const ProjectFailure.serverError());
    }
  }
}
