import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:rxdart/rxdart.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/domain/project/project_failure.dart';
import 'package:webportfolio/infrastructure/project/project_api.dart';
import 'package:webportfolio/infrastructure/project/project_dtos.dart';

import '../../domain/project/i_project_repository.dart';


@LazySingleton(as: IProjectRepository)
class ProjectRepository implements IProjectRepository {
  final ProjectApi _projectApi = ProjectApi('data.json');
  final FirebaseFirestore _firestore;
  ProjectRepository(this._firestore);

  @override
  Future<Either<ProjectFailure, KtList<Project>>> getProjectData() async {
    try {
      final data = await _firestore.collection('projects').get();
           return right<ProjectFailure, KtList<Project>>(
             data.docs.map((doc) {
            print("dfdf");
            return ProjectDto.fromFirestore(doc).toDomain();
          }).toImmutableList(),
        );
    } on Exception catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ProjectFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const ProjectFailure.serverError());
      }
    }

  }

  @override
  Future<Either<ProjectFailure, Unit>> create(Project project) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ProjectFailure, Unit>> update(Project project) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProjectFailure, KtList<Project>>> watchAllProjects() async*  {
    yield*  _firestore.collection('projects').snapshots().map(
            (snapshot) => right<ProjectFailure, KtList<Project>>(
          snapshot.docs.map((doc) {
            print("dfdf");
            return ProjectDto.fromFirestore(doc).toDomain();
          }).toImmutableList(),
        ),
      ).onErrorReturnWith((dynamic e) {
        if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
          return left(const ProjectFailure.insufficientPermission());
        } else {
          // log.error(e.toString());
          return left(const ProjectFailure.unexpected());
        }
      });
  }
}
