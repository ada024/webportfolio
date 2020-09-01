import 'package:flutter/widgets.dart';

const kTabletBreakpoint = 720.0;
const kDesktopBreakpoint = 1400.0;
const kSideMenuWidth = 200.0;

const kMaxBodyWidth = 850.0;

bool isPhoneSize(Size screenSize) {
  return screenSize.width < kTabletBreakpoint;
}
