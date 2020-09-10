

/*
@dev
@Injectable(as: IProjectRepository)
class DevProjectRepository implements IProjectRepository {
  final ProjectApi _projectApi = ProjectApi('assets/data.json');

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
}
*/