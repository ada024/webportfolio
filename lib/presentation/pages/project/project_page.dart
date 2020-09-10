import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webportfolio/application/project/project_bloc.dart';
import 'package:webportfolio/presentation/common/header.dart';
import 'package:webportfolio/presentation/common/info_bar.dart';
import 'package:webportfolio/presentation/common/loading_indicator.dart';
import 'package:webportfolio/presentation/core/constants.dart';

import 'widgets/project_builder.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, ProjectState>(
      builder: (BuildContext context, ProjectState state) {
        return Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Scrollbar(
                child: CustomScrollView(
                  slivers: <Widget>[
                     const SliverSafeArea(sliver:  SliverHeader(label: ''),),
                    _displayProjects(
                      context,
                      state,
                      constraints.maxWidth > kMaxBodyWidth
                          ? kMaxBodyWidth
                          : constraints.maxWidth,
                      constraints.maxWidth,
                    ),
                    const SliverBottomInfoBar()
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }



  Widget _displayProjects(BuildContext context, ProjectState state, double width, double maxWidth) {
    return state.map(
      loading: (_) {
        return const SliverLoadingIndicator();
      },
      error: (_) {
        return const NoProjects();
      },
      loaded: (state) {
        return Projects(
          project: state.project,
          width: width,
          maxWidth: maxWidth,
         // onTagTap: (tag) {context.bloc<ProjectBloc>().add( ProjectEvent.filterByTag(tag),);},
        );
      }, initial: (_) { return const SliverLoadingIndicator();  },
    );
  }
}