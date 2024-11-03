import 'package:flutter/material.dart';
import 'package:flutter_web_tut/utils/responsiveness.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: ResponsiveWidget.isSmallScreen(context)
            ? IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu))
            : Container(
                padding: const EdgeInsets.only(left: 14),
                child: const Icon(Icons.person),
              ));
