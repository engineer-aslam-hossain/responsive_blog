import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/screens/home/components/sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          labelText: 'Type Here ...',
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset(
              'assets/icons/feather_search.svg',
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
            borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}