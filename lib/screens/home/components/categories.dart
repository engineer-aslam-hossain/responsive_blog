import 'package:flutter/material.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/screens/home/components/sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Categories',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Artificial Intelligence',
            numOfItems: 3,
            onPressFn: () {},
          ),
          Category(
            title: 'Augmented reality',
            numOfItems: 4,
            onPressFn: () {},
          ),
          Category(
            title: 'Development',
            numOfItems: 10,
            onPressFn: () {},
          ),
          Category(
            title: 'Flutter UI',
            numOfItems: 19,
            onPressFn: () {},
          ),
          Category(
            title: 'Technology',
            numOfItems: 19,
            onPressFn: () {},
          ),
          Category(
            title: 'UI/UX design',
            numOfItems: 19,
            onPressFn: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback onPressFn;

  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.onPressFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressFn,
      child: Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(color: kDarkBlackColor),
          children: [
            TextSpan(
              text: ' ($numOfItems)',
              style: TextStyle(color: kBodyTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
