import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/controllers/MenuControllers.dart';

class SideMenu extends StatelessWidget {
  final MenuControllers _controllers = Get.put(MenuControllers());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: SvgPicture.asset('assets/icons/logo.svg'),
                ),
              ),
              ...List.generate(
                _controllers.menuItem.length,
                (index) => DrawerItem(
                  title: _controllers.menuItem[index],
                  isActive: index == _controllers.selectedIndex,
                  onPressFn: () {
                    _controllers.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressFn;

  DrawerItem({
    required this.title,
    required this.isActive,
    required this.onPressFn,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kDefaultDuration,
      color: isActive ? kPrimaryColor : Colors.transparent,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        onTap: onPressFn,
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
