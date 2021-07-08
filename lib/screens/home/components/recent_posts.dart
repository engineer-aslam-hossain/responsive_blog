import 'package:flutter/material.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/screens/home/components/sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Recent Post',
      child: Column(
        children: [
          RecentPostCard(
            image: 'assets/images/recent_1.png',
            title: 'Our "Secret" formula to online Workshop.',
            onPressFn: () {},
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          RecentPostCard(
            image: 'assets/images/recent_2.png',
            title: 'Digital Product Innovation from Warsaw with love.',
            onPressFn: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback onPressFn;
  const RecentPostCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.onPressFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressFn,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: kDarkBlackColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
