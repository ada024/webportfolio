import 'package:auto_route/auto_route_annotations.dart';

import '../app/app.dart';
import '../pages/aboutweb_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  App app;
  AboutWebPage aboutWebPage;
}
