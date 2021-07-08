import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/controllers/MenuControllers.dart';
import 'package:responsive_blog/screens/main/components/nav_item.dart';

class NavMenu extends StatelessWidget {
  final MenuControllers _controllers = Get.put(MenuControllers());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _controllers.menuItem.length,
          (index) => NavItem(
            text: _controllers.menuItem[index],
            isActice: index == _controllers.selectedIndex,
            onPressFn: () => _controllers.setMenuIndex(index),
          ),
        ),
      ),
    );
  }
}
