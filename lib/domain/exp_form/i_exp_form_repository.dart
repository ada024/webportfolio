import 'package:dartz/dartz.dart';

import 'exp_form.dart';
import 'exp_form_failure.dart';

abstract class IExpFormRepository {
  Future<Either<ExpFormFailure, Unit>> submitForm(ExpForm contact);
}
