// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool _isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 960.0;
}

bool _isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 640.0;
}

class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;

  const AdaptiveScaffoldDestination({
    @required this.title,
    @required this.icon,
  });
}


class AdaptiveScaffold extends StatefulWidget {
  final Widget title;
  final List<Widget> actions;
  final Widget body;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;
  final FloatingActionButton floatingActionButton;
   final Color backgroundColor;

  final VoidCallback homePressed;

  const AdaptiveScaffold({
    Key key,
    this.title,
    this.actions = const [],
    this.body,
    @required this.currentIndex,
    @required this.destinations,
    this.onNavigationIndexChange,
    this.floatingActionButton,
    this.backgroundColor = const Color(0xFFFAFAFA),
    @required this.homePressed,
  }) : super(key: key);

  @override
  _AdaptiveScaffoldState createState() => _AdaptiveScaffoldState();
}

class _AdaptiveScaffoldState extends State<AdaptiveScaffold> {
  @override
  Widget build(BuildContext context) {
    if (_isLargeScreen(context)) {
      return Row(
        children: [
          Drawer(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset:  Offset(3.0, 3.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 4.0,
                                ),
                              ]
                          ),
                          child: const CircleAvatar(
                              radius: 50.0, backgroundImage: ExactAssetImage('assets/images/me.png')),
                        ),
                      ),




                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: InkWell(
                          onTap: widget.homePressed,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 0.0,
                            ),
                            child:
                            RichText(textAlign: TextAlign.center,
                              text: const TextSpan(
                                children: [
                                  TextSpan(text: 'Developer',style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: 'CustomIcons'),),
                                  TextSpan(
                                    text: '\nAndreas M. Dale',
                                    style:  TextStyle(color: Colors.black,fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ),
                        ),
                      ),
                      for (var d in widget.destinations)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ListTileTheme(
                            selectedColor: Theme.of(context).accentColor,
                            child: ListTile(
                              leading: Icon(d.icon),
                              title: Text(
                                d.title,
                                style: GoogleFonts.firaCode(
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              ),
                              selected: widget.destinations.indexOf(d) ==
                                  widget.currentIndex,
                              onTap: () => _destinationTapped(d),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 126,
                title: widget.title,
                actions: widget.actions,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              extendBodyBehindAppBar: true,
              body: widget.body,
              floatingActionButton: widget.floatingActionButton,
            ),
          ),
        ],
      );
    }

    // Show a navigation rail
    if (_isMediumScreen(context)) {
      return Row(
        children: [
          NavigationRail(
            leading: widget.floatingActionButton,
            destinations: [
              ...widget.destinations.map(
                (d) => NavigationRailDestination(
                  icon: Icon(d.icon),
                  label: Text(d.title),
                ),
              ),
            ],
            selectedIndex: widget.currentIndex,
            onDestinationSelected: widget.onNavigationIndexChange ?? (_) {},
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          Expanded(
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                title: widget.title,
                actions: widget.actions,
                backgroundColor: Colors.transparent,
                toolbarHeight: 86,
                elevation: 0,
              ),
              body: widget.body,
            ),
          ),
        ],
      );
    }

    // Show a bottom app bar
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        actions: widget.actions,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 1,
      ),
      body: widget.body,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.2,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Theme.of(context).colorScheme.surface,
        // backgroundColor: Colors.red,
        // selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          ...widget.destinations.map(
            (d) => BottomNavigationBarItem(
              icon: Icon(d.icon),
              title: Text(d.title),
            ),
          ),
        ],
        currentIndex: widget.currentIndex,
        onTap: widget.onNavigationIndexChange,
      ),
      floatingActionButton: widget.floatingActionButton,
    );
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    final idx = widget.destinations.indexOf(destination);
    if (idx != widget.currentIndex) {
      widget.onNavigationIndexChange(idx);
    }
  }
}
