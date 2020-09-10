import 'package:flutter/material.dart';
import 'package:webportfolio/domain/project/project.dart';
import 'package:webportfolio/infrastructure/url_repository.dart' as url_repository;
import 'package:webportfolio/presentation/core/utils/url_handler.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({Key key,@required this.project,}) : super(key: key);
  final Project project;

  static const double _cardWidth = 400;
  static double get cardWidth => _cardWidth;
  static const double _cardHeight = 430;
  static double get cardHeight => _cardHeight;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: _cardWidth,
          maxHeight: _cardHeight,
          minHeight: _cardHeight,
        ),
        child: InkWell(
          onTap: () {
            launchURL(project.uri.getOrCrash());
          },
          child: Card(
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    url_repository.blogThumbnailUrl(project.thumbnail.getOrCrash()),
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    project.title.getOrCrash(),
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    project.desc.getOrCrash(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
