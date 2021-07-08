import 'package:flutter/material.dart';
import 'package:responsive_blog/constants.dart';
import 'package:responsive_blog/responsive.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        Text(
          'Welcome to Our Blog.',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Stay updated with the newest design and developement stories, case studies, \nand insights shared by the DesignDk team.',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FittedBox(
          child: TextButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'learn more',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}
