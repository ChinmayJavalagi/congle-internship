import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

class JoinNowButton extends StatefulWidget {
  const JoinNowButton({Key? key}) : super(key: key);

  @override
  State<JoinNowButton> createState() => _JoinNowButtonState();
}

class _JoinNowButtonState extends State<JoinNowButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Join Now',
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        primary: kPrimaryThemeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
    );
  }
}
