import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isFollowing = !isFollowing;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isFollowing ? kPrimaryThemeColor : Colors.transparent,
        primary: isFollowing ? Colors.white : kPrimaryThemeColor,
        side: BorderSide(color: kPrimaryThemeColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
      child: Text(isFollowing ? 'Following' : 'Follow'),
    );
  }
}
