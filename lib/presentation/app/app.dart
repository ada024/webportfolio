import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/page/page_bloc.dart';
import '../../application/theme/bloc/theme_bloc.dart';
import '../core/adaptive_dialog.dart';
import '../core/adaptive_scaffold.dart';
import '../core/constants.dart';
import '../core/extensions.dart';
import '../sign_in/sign_in_page.dart' deferred as sign_in;
import 'components/app_page.dart';
import 'components/error_listener.dart';

@immutable
class _AppDesitination {
  final AdaptiveScaffoldDestination destination;
  final PageState page;

  const _AppDesitination({
    @required this.destination,
    @required this.page,
  });
}

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<_AppDesitination> get _destinations => const [
        _AppDesitination(
          destination: AdaptiveScaffoldDestination(
            title: 'About',
            icon: Icons.person,
          ),
          page: PageState.about,
        ),
        _AppDesitination(
          destination: AdaptiveScaffoldDestination(
            title: 'Projects',
            icon: Icons.folder_special,
          ),
          page: PageState.projects,
        ),
        _AppDesitination(
          destination: AdaptiveScaffoldDestination(
            title: 'Experiences',
            icon: Icons.event_note,
          ),
          page: PageState.exp,
        ),
      ];

  void _onNavigation(
    int index,
  ) {
    BlocProvider.of<PageBloc>(context).add(
      PageEvent.update(_destinations[index].page),
    );
  }

  void _homePressed() {
    BlocProvider.of<PageBloc>(context).add(
      const PageEvent.update(PageState.about),
    );
  }

  int _getPageIndex(PageState page) {
    return _destinations.indexWhere((element) => element.page == page);
  }

  @override
  Widget build(BuildContext context) {
    return ErrorListener(
      child: BlocBuilder<PageBloc, PageState>(
        builder: (context, pageState) {
          return AdaptiveScaffold(
            currentIndex: _getPageIndex(pageState),
            destinations: _destinations.map((e) => e.destination).toList(),
            onNavigationIndexChange: (index) {
              _onNavigation(index);
            },
            homePressed: _homePressed,
            actions: const [
              _BrightnessButton(),
              _SettingsButton()
            ],
            body: const AppPage(),
          );
        },
      ),
    );
  }
}

class _BrightnessButton extends StatelessWidget {
  const _BrightnessButton({Key key}) : super(key: key);

  void _changeTheme(BuildContext context) {
    context.bloc<ThemeBloc>().add(const ThemeEvent.switchTheme());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return IconButton(
          icon: state.map(
            light: (_) => const Icon(Icons.brightness_2),
            dark: (_) => const Icon(Icons.wb_sunny),
          ),
          onPressed: () {
            _changeTheme(context);
          },
        );
      },
    );
  }
}

class _SettingsButton extends StatelessWidget {
  const _SettingsButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {
            showModal<dynamic>(
              context: context,
              configuration: const FadeScaleTransitionConfiguration(),
              builder: (BuildContext context) {
                // ignore: prefer_const_constructors
                return AdaptiveDialog(
                  // ignore: prefer_const_constructors
                  child: sign_in.SignInPage(),
                );
              },
            );
          },
        );

  }
}



class _MenuButton extends StatefulWidget {
  const _MenuButton({
    Key key,
  }) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<_MenuButton> {
  bool isAuthenticated = false;

  Future<void> _signInPressed() async {
    await sign_in.loadLibrary();
      showModal<dynamic>(
        context: context,
        configuration: const FadeScaleTransitionConfiguration(),
        builder: (BuildContext context) {
          // ignore: prefer_const_constructors
          return AdaptiveDialog(
            // ignore: prefer_const_constructors
            child: sign_in.SignInPage(),
          );
        },
      );
  }

  void _signOutPressed() {
    BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signOut());
  }

  void _select(_PopupMenuOptions menu) {
    if (isAuthenticated) {
      _signOutPressed();
    } else {
      _signInPressed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        isAuthenticated = state.map(
          initial: (_) => false,
          authenticated: (_) => true,
          unauthenticated: (_) => false,
        );
        return PopupMenuButton(
          offset: const Offset(0, 100),
          elevation: 3.2,
          initialValue: _choices[0],
          tooltip: 'Settings',
          onSelected: _select,
          itemBuilder: (BuildContext context) {
            return _choices.map((_PopupMenuOptions choice) {
              return PopupMenuItem(
                value: choice,
                child: const _MenuOptionText(label: 'Settings')
                //isAuthenticated ? const _MenuOptionText(label: 'Sign Out') : const _MenuOptionText(label: 'Sign In'),
              );
            }).toList();
          },
        );
      },
    );
  }
}

class _MenuOptionText extends StatelessWidget {
  const _MenuOptionText({Key key, this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(label),
    );
  }
}

class _PopupMenuOptions {
  const _PopupMenuOptions({this.title, this.icon});
  final String title;
  final IconData icon;
}

List<_PopupMenuOptions> _choices = const [
  _PopupMenuOptions(title: 'Auth', icon: Icons.lock),
];
