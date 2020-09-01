import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/constants.dart';

class SliverBody extends StatelessWidget {
  const SliverBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          decoration:  BoxDecoration(
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
            constraints: const BoxConstraints(maxWidth: kMaxBodyWidth,),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(3.0, 3.0),
                            blurRadius: 15.0,
                            spreadRadius: 4.0,
                          ),
                        ]
                    ),
                    child: const CircleAvatar(
                        radius: 100.0, backgroundImage: ExactAssetImage('assets/images/me.png')),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Theme.of(context).colorScheme.surface,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Developer',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ConstrainedBox(
                          constraints:  const BoxConstraints(maxWidth: 500),
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   RichText(
                              text:  TextSpan(
                                children: [
                                   const TextSpan(style: TextStyle(fontSize: 16.0),text: 'Jeg har tatt Informatikk ved Høyskolen på Vestlandet og var ferdig utdannet i 2017. Der hadde jeg fordypning i web & mobilteknologi. Jeg var med på å lage utlåns appen Pigify som var min bachelor-oppgave. I tillegg har jeg fagbrev i IKT-service og hadde tiden som lærling ved Universitetet i Bergen. '),
                                  const TextSpan(
                                    text: '\n\nFortiden er jeg ansatt hos Naeva som apputvikler og har vært med å utvikle to app-løsninger for dem. I utviklingen ble det brukt Flutter og Firebase for backend.',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const TextSpan(
                                    text: '\n\nJeg er som person lærevillig og nysgjerrig på ny teknologi og verktøy. Før jeg ble ansatt hos Naeva lærte jeg meg Flutter og har økt kompetansen min innen dette rammeverket. Det er viktig for meg å ha god kvalitet og god brukervennlighet på løsningene. Ledere og kollegaer ser på meg som en engasjert teammedarbeider som kommuniserer godt og tar ansvar for oppgavene. Detter er egenskaper jeg vil ta med meg videre i en ny jobb.',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),

                            /*
                            Text(
                              '''Jeg har tatt Informatikk ved Høyskolen på Vestlandet og var ferdig utdannet i 2017. Der hadde jeg fordypning i web & mobilteknologi. Jeg var med på å lage utlåns appen Pigify som var min bachelor-oppgave. I tillegg har jeg fagbrev i IKT-service og hadde lærling tiden ved Universitetet i Bergen.
Fortiden er jeg ansatt hos Naeva som apputvikler og har vært med å utvikle to app-løsninger for dem. I utviklingen ble det brukt Flutter og Firebase for backend.
Jeg er som person lærevillig og nysgjerrig på ny teknologi og verktøy. Før jeg ble ansatt hos Naeva lærte jeg meg Flutter og har økt kompetansen min innen dette rammeverk. Det er viktig for meg å ha god kvalitet og god bruker vennlighet på løsningene. Ledere og kollegaer ser på meg som en engasjert teammedarbeider som kommuniserer godt og tar ansvar for oppgavene. Detter er egenskaper jeg vil ta med meg videre i en ny jobb.
''',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            */

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Skills',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold),
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
                )
              ],
            ),
          ),
        ),
      ),
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
              textAlign: TextAlign.right,
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
