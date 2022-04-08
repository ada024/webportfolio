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
          'About this webapp',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
      ),
      body:  Column(children:const [
         Padding(
          padding:  EdgeInsets.all(18.0),
          child:  Text(
            'This webapp is build with Google Flutter by ada024 in 2020',
            style: TextStyle(fontSize: 16),),
        ),
         Padding(
          padding:  EdgeInsets.all(18.0),
          child:  Text(
            'Uses: \n\nBLOC Architecture\nDomain-driven design\nConsume API\nFirebase\nStorage\nInternationalized\nResponsive UI',
            style: TextStyle(fontSize: 16),),
        ),
      ],),
    );
  }
}
