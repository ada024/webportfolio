import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:webportfolio/application/exp/exp_bloc.dart';

import 'application/page/page_bloc.dart';
import 'application/project/project_bloc.dart';
import 'application/simple_bloc_observer.dart';
import 'application/theme/bloc/theme_bloc.dart';
import 'injection.dart';
import 'presentation/core/app_widget.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  String env = Environment.prod;
  assert(() {
    env = Environment.dev;
    Bloc.observer = SimpleBlocObserver();
    return true;
  }());
  configureInjection(env);
  //var data = EasyLocalizatio

  runApp(MultiBlocProvider(
    providers: [
   //   BlocProvider(  create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()), ),
      BlocProvider<ProjectBloc>( create: (context) => getIt<ProjectBloc>()..add( const ProjectEvent.showAllStarted() ), ),
      BlocProvider<PageBloc>(create: (context) { return PageBloc(); }),
      BlocProvider<ExpBloc>(create: (context) => getIt<ExpBloc>()..add(const ExpEvent.fetch())),
      BlocProvider<ThemeBloc>(create: (context) {  return ThemeBloc(); }),
    ],
    child: EasyLocalization(supportedLocales: const [
      Locale('en'),
      Locale('no'),
    ],path: 'assets/lang',
        fallbackLocale: const Locale('en'),startLocale: const Locale('en'),
    child: const PortefolioApp()),
  ));
}
