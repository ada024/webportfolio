// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:webportfolio/presentation/app/app.dart';
import 'package:webportfolio/presentation/pages/aboutweb_page.dart';

abstract class Routes {
  static const app = '/';
  static const aboutWebPage = '/about-web-page';
  static const all = {
    app,
    aboutWebPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.app:
        if (hasInvalidArgs<AppArguments>(args)) {
          return misTypedArgsRoute<AppArguments>(args);
        }
        final typedArgs = args as AppArguments ?? AppArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => App(key: typedArgs.key),
          settings: settings,
        );
      case Routes.aboutWebPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => AboutWebPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//App arguments holder class
class AppArguments {
  final Key key;
  AppArguments({this.key});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushApp({
    Key key,
  }) =>
      pushNamed(
        Routes.app,
        arguments: AppArguments(key: key),
      );

  Future pushAboutWebPage() => pushNamed(Routes.aboutWebPage);
}
