import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/domain/exp/experience.dart';
import 'package:webportfolio/domain/exp/value_objects.dart';
import 'package:webportfolio/infrastructure/core/firestore_helpers.dart';

part 'exp_dtos.freezed.dart';

part 'exp_dtos.g.dart';

@freezed
abstract class ExpDto implements _$ExpDto {
  const ExpDto._();

  const factory ExpDto({
    @required String company,
    @required String position,
    @required String duration,
  }) = _ExpDto;

  factory ExpDto.fromJson(Map<String, dynamic> json) => _$ExpDtoFromJson(json);

  Experience toDomain() {
    return Experience(
        company: ExpCompany(company),
        duration: ExpDuration(duration),
        position: ExpPosition(position));
  }

  factory ExpDto.fromFirestore(DocumentSnapshot doc) {
    return ExpDto.fromJson(doc.data());
  }
}
