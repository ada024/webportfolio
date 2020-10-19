import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/project/value_objects.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({@required UniqueId id, @required ProjectDesc desc, @required ProjectTag tag, @required ProjectThumbnail thumbnail, @required ProjectTitle title, @required ProjectUrisrc urisrc, @required ProjectUri uri}) = _Project;

  const Project._();

  factory Project.empty() => Project(
        id: UniqueId(),
        desc: ProjectDesc(''),
        thumbnail: ProjectThumbnail(""),
        tag: ProjectTag(""),
        title: ProjectTitle(''),
        uri: ProjectUri(""),
        urisrc: ProjectUrisrc(""),
      );
}
