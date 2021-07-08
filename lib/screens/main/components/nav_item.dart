import 'package:flutter/material.dart';
import 'package:responsive_blog/constants.dart';

class NavItem extends StatefulWidget {
  final String text;
  final bool isActice;
  final VoidCallback onPressFn;

  const NavItem({
    Key? key,
    required this.text,
    required this.isActice,
    required this.onPressFn,
  }) : super(key: key);

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActice) {
      return kPrimaryColor;
    } else if (!widget.isActice & _isHover) {
      return kPrimaryColor.withOpacity(.4);
    }

    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressFn,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
