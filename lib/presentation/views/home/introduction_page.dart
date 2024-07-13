import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yelwinoo/presentation/utils/extensions/extensions.dart';
import 'package:yelwinoo/presentation/widgets/widgets.dart';

import '../../configs/configs.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: duration3000,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? titleTextStyle = context.adaptive(
      Theme.of(context).textTheme.titleMedium,
      Theme.of(context).textTheme.headlineSmall,
      md: Theme.of(context).textTheme.titleLarge,
    );
    TextStyle? superTitleTextStyle = context.adaptive(
      Theme.of(context).textTheme.titleLarge,
      Theme.of(context).textTheme.headlineSmall,
      md: Theme.of(context).textTheme.titleLarge,
    );

    return <Widget>[
      <Widget>[
        <Widget>[
          Text(kHiMySelf, style: titleTextStyle),
          Text(ksMatteoGentili, style: superTitleTextStyle),
          Text(ksMobileDeveloper, style: titleTextStyle),
          verticalSpaceMassive,
          Text(ksIntro, style: Theme.of(context).textTheme.bodyLarge),
          verticalSpaceMassive,
          context.percentSizedBox(pHeight: context.adaptive(s12, s10)),
          <Widget>[
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  ksGithubLink.launchWebsite;
                }),
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  ksLinkedIn.launchWebsite;
                }),
            IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {
                  ksLinkedIn.launchWebsite;
                }),
          ].addRow(),
        ].addColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ].addRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ]
        .addStack(
          alignment: Alignment.center,
        )
        .addPadding(
          edgeInsets: context.symmetricPercentPadding(
            hPercent: context.adaptive(
              s2,
              s10,
              md: s4,
            ),
          ),
        )
        .addSizedBox(
          height: context.screenHeight - context.appBarTheme().toolbarHeight!,
          width: context.screenWidth,
        );
  }
}
