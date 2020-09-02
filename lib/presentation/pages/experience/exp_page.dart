import 'package:flutter/material.dart';
import 'package:webportfolio/presentation/common/header.dart';
import 'package:webportfolio/presentation/common/info_bar.dart';
import 'package:webportfolio/presentation/pages/experience/widgets/sliver_body.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child:  LayoutBuilder(
          builder: (context, constraints) {
            return  const Scrollbar(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverSafeArea(
                    sliver: SliverHeader(label: ''),
                  ),
                  SliverBody(),
                  SliverBottomInfoBar()
                ],
              ),
            );
          },
        )




        /*
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800, minWidth: 300),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Building something in Flutterrrr?',
                            style: Theme.of(context).textTheme.headline4),
                        Text('Contact us',
                            style: Theme.of(context).textTheme.headline5),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const ContactForm(),
                // const IFrameWidget(
                //   width: 640,
                //   height: 360,
                //   src: 'https://www.youtube.com/embed/2zwEdDoPvnc',
                //   style: 'border: 0;',
                //   allow:
                //       'accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture',
                //   allowFullscreen: true,
                // ),
                const InfoBar(),
              ],
            ),
          ),
        ),
        */




      ),
    );
  }
}
