import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_data.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
abstract class Tag with _$Tag{
  const factory Tag(String name, List<PostData> pages) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}