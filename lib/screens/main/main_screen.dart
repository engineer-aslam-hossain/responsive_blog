import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/controllers/MenuControllers.dart';
import 'package:responsive_blog/screens/home/home_screen.dart';
import 'package:responsive_blog/screens/main/components/header.dart';
import 'package:responsive_blog/screens/main/components/side_manu.dart';

class MainScreen extends StatelessWidget {
  final MenuControllers _controllers = Get.put(MenuControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controllers.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
