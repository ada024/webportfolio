import 'package:auto_route/auto_route_annotations.dart';

import '../app/app.dart';
import '../pages/aboutweb_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,

  routes: <AutoRoute>[
    MaterialRoute<void>(page: App, initial: true),
    MaterialRoute<void>(page: AboutWebPage),
  ],



)
class $Router {}
