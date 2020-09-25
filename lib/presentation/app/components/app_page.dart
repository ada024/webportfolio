import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/page/page_bloc.dart';
import '../../common/error_widget.dart';
import '../../common/loading_indicator.dart';
import '../../pages/about/home_page.dart' deferred as about;
import '../../pages/experience//exp_page.dart' deferred as exp;
import '../../pages/project//project_page.dart' deferred as project;

class AppPage extends StatelessWidget {
  const AppPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, PageState>(
      builder: (BuildContext context, PageState state) {
        switch (state) {
          case PageState.about:
            return FutureBuilder<dynamic>(
              future: about.loadLibrary(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return   about.HomePage();
                } else {
                  return const LoadingIndicator();
                }
              },
            );
            break;
          case PageState.projects:
            return FutureBuilder<dynamic>(
              future: project.loadLibrary(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return project.ProjectPage();
                } else {
                  return const LoadingIndicator();
                }
              },
            );
            break;
          case PageState.exp:
            return FutureBuilder<dynamic>(
              future: exp.loadLibrary(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return exp.ExperiencePage();
                } else {
                  return const LoadingIndicator();
                }
              },
            );
            break;
          default:
            return const CustomError(
              errorMessage: '''
                  Some error occurred. Please report it to site owner!
                  ''',
            );
            break;
        }
      },
    );
  }
}
