import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kt_dart/kt.dart';
import 'package:webportfolio/domain/project/project.dart';

import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key key,
    @required this.project,
    @required this.width,
    @required this.maxWidth,
  //  @required this.onTagTap,
    this.limitNumberOfProjects,
  }) : super(key: key);

  final KtList<Project> project;
  final double width;
  final double maxWidth;
  final int limitNumberOfProjects;
//  final OnTagTap onTagTap;

  int _numberOfProjectToShow(int numberOfProjectsAvailable) {
    if (limitNumberOfProjects == null) {
      return numberOfProjectsAvailable;
    }
    return (numberOfProjectsAvailable >= limitNumberOfProjects)
        ? limitNumberOfProjects
        : numberOfProjectsAvailable;
  }

  @override
  Widget build(BuildContext context) {
    int crossAxisCount;
    double childAspectRation;

    final padding = (maxWidth - width) / 2;

    if (maxWidth >= ProjectCard.cardWidth * 2) {
      crossAxisCount = 2;
      childAspectRation = (width / 2) / ProjectCard.cardHeight;
    } else {
      crossAxisCount = 1;
      childAspectRation = width / ProjectCard.cardHeight;
    }
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8,
          mainAxisSpacing: 16,
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRation,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProjectCard( key: ValueKey(project[index].title),project: project[index]);
          },
          childCount: _numberOfProjectToShow(project.size),
        ),
      ),
    );
  }
}

class NoProjects extends StatelessWidget {
  const NoProjects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Text(
            'No projects to display!',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
