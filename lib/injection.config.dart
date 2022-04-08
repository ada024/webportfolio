// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/exp/exp_bloc.dart';
import 'infrastructure/exp/exp_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/exp/i_exp_repository.dart';
import 'domain/project/i_project_repository.dart';
import 'application/project/project_bloc.dart';
import 'infrastructure/project/project_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
//  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IExpRepository>(
      () => ExpRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IProjectRepository>(
      () => ProjectRepository(get<FirebaseFirestore>()));
  gh.factory<ProjectBloc>(() => ProjectBloc(get<IProjectRepository>()));
  gh.factory<ExpBloc>(() => ExpBloc(get<IExpRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
