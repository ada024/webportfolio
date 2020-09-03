import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Sign in',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
      ),
      body:  Column(children: [
         Text("Signin form")
      ],),
    );
  }
}
