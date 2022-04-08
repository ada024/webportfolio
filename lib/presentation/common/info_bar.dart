import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../core/adaptive_dialog.dart';
import '../pages/aboutweb_page.dart' deferred as moreinfo;

class InfoBar extends StatelessWidget {
  const InfoBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
          MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              showModal<dynamic>(
                context: context,
                configuration: const FadeScaleTransitionConfiguration(),
                builder: (BuildContext context) {
                  // ignore: prefer_const_constructors
                  return AdaptiveDialog(
                    // ignore: prefer_const_constructors
                    child: moreinfo.AboutWebPage(),
                  );
                },
              );
            },
              child: RichText(
                text:  TextSpan(
                  children: const [
                     TextSpan(text: 'About this '),
                     TextSpan(
                      text: 'webapp',
                      style:  TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ],
                  style: Theme.of(context).textTheme.caption,
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverBottomInfoBar extends StatelessWidget {
  const SliverBottomInfoBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
       child: InfoBar(),
      ),
    );
  }
}