import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:webportfolio/domain/exp/exp_failure.dart';
import 'package:webportfolio/domain/exp/experience.dart';
import 'package:webportfolio/domain/exp/i_exp_repository.dart';
import 'package:webportfolio/infrastructure/exp/exp_dtos.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IExpRepository)
class ExpRepository implements IExpRepository {
  final FirebaseFirestore _firestore;

  ExpRepository(this._firestore);

  @override
  Future<Either<ExpFailure, KtList<Experience>>> getExpData() async {
    try {
      final data = await _firestore.collection('experience').orderBy('serverTimeStamp', descending: true).get();
      return right<ExpFailure, KtList<Experience>>(data.docs.map((doc) => ExpDto.fromJson(doc.data()).toDomain()).toImmutableList(),
      );
    } on Exception catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ExpFailure.insufficientPermission());
      } else {
        return left(const ExpFailure.serverError());
      }
    }
  }
}
