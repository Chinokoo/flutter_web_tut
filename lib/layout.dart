import 'package:flutter/material.dart';
import 'package:flutter_web_tut/componets/large_screen.dart';
import 'package:flutter_web_tut/componets/small_screen.dart';
import 'package:flutter_web_tut/componets/top_nav.dart';
import 'package:flutter_web_tut/utils/responsiveness.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavigationBar(context, key),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
