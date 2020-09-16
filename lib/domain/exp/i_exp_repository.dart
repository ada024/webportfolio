import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:webportfolio/domain/exp/exp_failure.dart';

import 'experience.dart';

abstract class IExpRepository {
  Future<Either<ExpFailure, KtList<Experience>>> getExpData();
}
