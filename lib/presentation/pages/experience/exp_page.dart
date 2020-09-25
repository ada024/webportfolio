import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webportfolio/application/exp/exp_bloc.dart';
import 'package:webportfolio/presentation/common/header.dart';
import 'package:webportfolio/presentation/common/info_bar.dart';
import 'package:webportfolio/presentation/common/loading_indicator.dart';
import 'package:webportfolio/presentation/core/critical_failure_display.dart';
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
      ),
    );
  }
}
