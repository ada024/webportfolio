import 'package:flutter/widgets.dart';

extension SizeExtension on BuildContext {
  Size get mediaSize => MediaQuery.of(this).size;
}
