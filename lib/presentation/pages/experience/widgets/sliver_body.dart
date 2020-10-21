import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webportfolio/application/exp/exp_bloc.dart';
import 'package:webportfolio/presentation/common/loading_indicator.dart';
import 'package:webportfolio/presentation/core/critical_failure_display.dart';

import '../../../core/constants.dart';

class SliverBody extends StatelessWidget {
  const SliverBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child:
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(8, 6),
                ),
              ],
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: kMaxBodyWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'experiences'.tr(),
                      style: GoogleFonts.firaCode(fontSize: 32, color: Colors.black),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Theme
                        .of(context)
                        .colorScheme
                        .surface,
                    child: Center(
                        child:
                        BlocBuilder<ExpBloc, ExpState>(
                            builder: (context, state) {
                              return state.map(
                                initial: (_) => Container(),
                                loading: (_) => const LoadingIndicator(),
                                loadSuccess: (state) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                        itemBuilder: (context, i) {
                                         return _experienceRow(company: state.exp[i].company.getOrCrash().toString(), position:state.exp[i].position.getOrCrash().toString(), duration: state.exp[i].duration.getOrCrash().toString(),context: context);
                                        },
                                        itemCount: state.exp.size,
                                      ),
                                  ],
                                );
                                },
                                loadFailure: (state) {
                                  return CriticalFailureDisplay(
                                    failure: state.expFailure,
                                  );
                                },
                              );
                            })
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(18.0),
                    child: Text(
                      'aboutSkills'.tr(),
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  _skillRow("Flutter", 0.75),
                  const SizedBox(height: 5.0),
                  _skillRow("Firebase", 0.6),
                  const SizedBox(height: 5.0),
                  _skillRow("Angular", 0.65),
                  const SizedBox(height: 5.0),
                  _skillRow("Java", 0.5),
                  const SizedBox(height: 30.0),

                ],
              ),
            ),
          ),

        )
    );
  }


  ListTile _experienceRow({BuildContext context,String company,String  position,String duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        "$company",
        style: Theme
            .of(context)
            .textTheme
            .headline5,),
      subtitle: Text("$position ($duration)", style: Theme
          .of(context)
          .textTheme
          .headline6,),
    );
  }

  Row _skillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,style: TextStyle(color: Colors.black,),
            )),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            valueColor: const AlwaysStoppedAnimation<Color>( Color.fromRGBO(0, 255, 0, 1)),
            backgroundColor: const Color.fromRGBO(0, 128, 0, 1),
            value: level,
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

}
