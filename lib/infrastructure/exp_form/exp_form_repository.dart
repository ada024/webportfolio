import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exp_form/exp_form.dart';
import '../../domain/exp_form/exp_form_failure.dart';
import '../../domain/exp_form/i_exp_form_repository.dart';
import 'exp_form_api.dart';

@Injectable(as: IExpFormRepository)
class ExpFormRepository implements IExpFormRepository {
  final ExpFormApi _api = ExpFormApi('https://formspree.io/xyynnggq');

  @override
  Future<Either<ExpFormFailure, Unit>> submitForm(
      ExpForm exp) async {
    final String name = exp.name.getOrCrash();
    final String replyTo = exp.replyTo.getOrCrash();
    final String message = exp.message.getOrCrash();

    try {
      await _api.submitForm(name, replyTo, message);
      return right(unit);
    } catch (e) {
      return left(const ExpFormFailure.serverError());
    }
  }
}
