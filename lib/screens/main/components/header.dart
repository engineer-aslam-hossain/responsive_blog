import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/controllers/MenuControllers.dart';
import 'package:responsive_blog/responsive.dart';
import 'package:responsive_blog/screens/main/components/header_banner.dart';
import 'package:responsive_blog/screens/main/components/nav_menu.dart';
import 'package:responsive_blog/screens/main/components/social.dart';

class Header extends StatelessWidget {
  final MenuControllers _controllers = Get.put(MenuControllers());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlackColor,
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          onPressed: () {
                            _controllers.openOrCloseDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      SvgPicture.asset('assets/icons/logo.svg'),
                      Spacer(),
                      if (Responsive.isDesktop(context)) NavMenu(),
                      Spacer(),
                      Social(),
                    ],
                  ),
                  HeaderBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
