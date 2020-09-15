import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webportfolio/domain/core/value_objects.dart';
import 'package:webportfolio/domain/exp/value_objects.dart';

//part 'experience.freezed.dart';

@freezed
abstract class Experience with  _$Experience {
  const factory Experience(
      {
    @required UniqueId id,
  @required ExpCompany company,
  @required ExpPosition position}
  )= _Experience;

  /*
  const Experience.();

  factory Experience.empty() => Experience(
    id: UniqueId(),
    company: ExpCompany(''),
    position: ExpPosition(""),
  );
*/
}