import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/project/project_bloc.dart';
import '../../core/constants.dart';
import '../../core/extensions.dart';
import '../../core/notification_helper.dart';


class ErrorListener extends StatelessWidget {
  const ErrorListener({Key key, this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProjectBloc, ProjectState>(
          listener: (context, state) {
            state.maybeMap(
              error: (error) {
                NotificationHelper.error(
                  message: 'Error loading project-data',
                  isPhone: isPhoneSize(context.mediaSize),
                ).show(context);
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: child,
    );
  }
}
