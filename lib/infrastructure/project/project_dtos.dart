import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/project/value_objects.dart';
import 'package:kt_dart/kt.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/infrastructure/core/firestore_helpers.dart';

part 'project_dtos.freezed.dart';

part 'project_dtos.g.dart';

@freezed
abstract class ProjectDto implements _$ProjectDto {
  const ProjectDto._();

  const factory ProjectDto({
    @JsonKey(ignore: true) String id,
    @required String description,
    @required String tag,
    @required String thumbnail,
    @required String title,
    @required String uri,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ProjectDto;

  factory ProjectDto.fromDomain(Project project) {
    return ProjectDto(
        id: project.id.getOrCrash(),
        description: project.desc.getOrCrash(),
        tag: project.tag.getOrCrash(),
        thumbnail: project.thumbnail.getOrCrash(),
        title: project.title.getOrCrash(),
        serverTimeStamp: FieldValue.serverTimestamp(),
        uri: null);
  }

  Project toDomain() {
    return Project(
      id: UniqueId.fromUniqueString(id),
      desc: ProjectDesc(description),
      title: ProjectTitle(title),
      tag: ProjectTag(tag),
      thumbnail: ProjectThumbnail(thumbnail),
      uri: ProjectUri(uri),
    );
  }

  factory ProjectDto.fromJson(Map<String, dynamic> json) => _$ProjectDtoFromJson(json);

  factory ProjectDto.fromFirestore(DocumentSnapshot doc) {
    return ProjectDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
