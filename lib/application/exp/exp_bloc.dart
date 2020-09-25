import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:webportfolio/domain/exp/exp_failure.dart';
import 'package:webportfolio/domain/exp/experience.dart';
import 'package:webportfolio/domain/exp/i_exp_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
part 'exp_event.dart';

part 'exp_state.dart';

part 'exp_bloc.freezed.dart';

@injectable
class ExpBloc extends Bloc<ExpEvent, ExpState> {
  final IExpRepository _expRepository;

  ExpBloc(this._expRepository) : super(const ExpState.initial());
  @override
  Stream<ExpState> mapEventToState(ExpEvent event,) async* {
    yield const ExpState.loading();
    yield* event.map(
        fetch: (e) async* {
      final expOption = await _expRepository.getExpData();


      yield expOption.fold(
        (_) => const ExpState.loadFailure(ExpFailure.serverError()),
        (exp) {
          return ExpState.loadSuccess(exp);
        },
      );
    });
  }
}
