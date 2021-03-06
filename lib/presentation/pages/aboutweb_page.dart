import 'package:flutter/material.dart';

class AboutWebPage extends StatelessWidget {
  const AboutWebPage();

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
          padding:  EdgeInsets.all(18.0),
          child:  Text(
            'This webpage is build with Google Flutter.',
            style: TextStyle(fontSize: 16),),
        ),
         Padding(
          padding: const EdgeInsets.all(18.0),
          child: const Text(
            'Uses: \n\nBLOC\nDDD\nAuthentication\nConsume API\nFirestore\nStorage\nInternationalized\nResponsive UI',
            style: TextStyle(fontSize: 16),),
        ),


      ],),
    );
  }
}
