import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'About this webpage',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
      ),
      body:  Column(children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: const Text(
            'This webapge is build with Google Flutter.',
            style: TextStyle(fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: const Text(
            'Use: \n\nBLOC\nDomain Driven Design\nAuthentication\nConsume API(Cloud function)\nFirestore\nStorage\nTranslated\nResponsive for different screen sizes',
            style: TextStyle(fontSize: 16),),
        ),


      ],),
    );
  }
}
