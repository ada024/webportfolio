import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webportfolio/presentation/routes/router.gr.dart';

import '../../application/theme/bloc/theme_bloc.dart';
import 'themes.dart';

class PortefolieApp extends StatelessWidget {
  const PortefolieApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Portfolio-app',
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: state.map(
            light: (_) => ThemeMode.light,
            dark: (_) => ThemeMode.dark,
          ),
          builder: ExtendedNavigator(router: Router()),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
