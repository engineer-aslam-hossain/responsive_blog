import 'package:flutter/material.dart';
import 'package:responsive_blog/constants.dart';

class SideBarContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const SideBarContainer({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kDefaultPadding / 4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kDarkBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          child,
        ],
      ),
    );
  }
}
