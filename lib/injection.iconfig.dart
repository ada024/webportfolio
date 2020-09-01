// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:webportfolio/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:webportfolio/infrastructure/auth/firebase_auth_facade.dart';
import 'package:webportfolio/domain/auth/i_auth_facade.dart';
import 'package:webportfolio/infrastructure/exp_form/exp_form_repository.dart';
import 'package:webportfolio/domain/exp_form/i_exp_form_repository.dart';
import 'package:webportfolio/infrastructure/project/dev_blog_repository.dart';
import 'package:webportfolio/domain/project/i_project_repository.dart';
import 'package:webportfolio/infrastructure/project/project_repository.dart';
import 'package:webportfolio/application/project/project_bloc.dart';
import 'package:webportfolio/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:webportfolio/application/auth/auth_bloc.dart';
import 'package:webportfolio/application/exp_form/bloc/exp_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<IExpFormRepository>(() => ExpFormRepository());
  g.registerFactory<ProjectBloc>(() => ProjectBloc(g<IProjectRepository>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<ExpFormBloc>(() => ExpFormBloc(g<IExpFormRepository>()));

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<IProjectRepository>(() => DevBlogRepository());
  }

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<IProjectRepository>(() => ProjectRepository());
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
