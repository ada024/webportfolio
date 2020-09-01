import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_data.dart';
import 'tag.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
abstract class Project with _$Project{
  const factory Project(List<Tag> tags, List<PostData> pages) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
