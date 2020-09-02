import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/project/project_bloc.dart';
import '../../common/header.dart';
import '../../common/info_bar.dart';
import 'widgets/sliver_body.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (BuildContext context, ProjectState state) {
        return Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const Scrollbar(
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
          ),
        );
      },
    );
  }
}
