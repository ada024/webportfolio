import 'package:flutter/material.dart';
import '../../../core/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliverBody extends StatelessWidget {
  const SliverBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:
      Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: kMaxBodyWidth),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                color: Theme.of(context).colorScheme.surface,
                child: Center(
                  child: Column(
                    children: [
                      _experienceRow(company: "Naeva AS", position: "Appdeveloper", duration: "2019 - 2020",context: context),
                      _experienceRow(company: "Zahlhuus AS", position: "Project/engagement", duration: "2017 - 2018",context: context),
                      _experienceRow(company: "UIB", position: "Apprentice IKT-service", duration: "2008 - 2010",context: context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }


  ListTile _experienceRow({BuildContext context,String company, String position, String duration}) {
    return ListTile(
      leading: const Padding(
        padding:  EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: Theme.of(context).textTheme.headline5,),
      subtitle: Text("$position ($duration)",style: Theme.of(context)
          .textTheme
          .headline6,),
    );
  }

}
