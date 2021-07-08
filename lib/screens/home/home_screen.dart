import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/models/blog.dart';
import 'package:responsive_blog/responsive.dart';
import 'package:responsive_blog/screens/home/components/blog_post_card.dart';
import 'package:responsive_blog/screens/home/components/categories.dart';
import 'package:responsive_blog/screens/home/components/recent_posts.dart';
import 'package:responsive_blog/screens/home/components/search.dart';
import 'package:responsive_blog/screens/home/components/sidebar_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(
                blog: blogPosts[index],
              ),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Categories(),
                SizedBox(
                  height: kDefaultPadding,
                ),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
