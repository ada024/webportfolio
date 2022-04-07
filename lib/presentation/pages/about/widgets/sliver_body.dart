import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webportfolio/presentation/common/icon_button_widget.dart';
import 'package:webportfolio/presentation/core/utils/custom_icons_icons.dart';

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
                Row(
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
                            radius: 100.0, backgroundImage: ExactAssetImage('assets/images/me.jpg')),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "aboutWork".tr(),
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            'Andreas M. Dale',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.normal,color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Theme.of(context).colorScheme.surface,
                  child: Center(
                    child: Column(
                      children: [

                        ConstrainedBox(
                          constraints:  const BoxConstraints(maxWidth: 500),
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   RichText(
                              text:  TextSpan(
                                children: [
                                    TextSpan(style: const TextStyle(fontSize: 16.0),text: "aboutContent".tr()),
                                ],
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ),
                        ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
                    children: const [
                       Text("GitHub: "),
                      IconBtn(
                        iconData: CustomIcons.githubCircled,
                        url: githubUrl,
                      ),
                    ],
                  ),
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
}
