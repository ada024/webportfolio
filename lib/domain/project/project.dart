import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/project/value_objects.dart';

part 'project.freezed.dart';

@freezed
abstract class Project with _$Project {
  const factory Project(
      {@required UniqueId id,
      @required ProjectDesc desc,
      @required ProjectTag tag,
      @required ProjectThumbnail thumbnail,
      @required ProjectTitle title,
      @required ProjectUri uri}) = _Project;

/*
  const factory Project(List<Tag> tags, List<PostData> pages) = _Project;
  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
*/

  const Project._();

  factory Project.empty() => Project(
        id: UniqueId(),
        desc: ProjectDesc(''),
        thumbnail: ProjectThumbnail(""),
        tag: ProjectTag(""),
        title: ProjectTitle(''),
        uri: ProjectUri(""),
      );
}
