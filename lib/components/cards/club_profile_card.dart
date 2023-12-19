import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

import '../buttons/follow_button.dart';

class ClubProfileCard extends StatefulWidget {
  final String clubName;
  final String tagline;
  final String profileImage;

  ClubProfileCard({required this.clubName, required this.tagline, required this.profileImage});

  @override
  State<ClubProfileCard> createState() => _ClubProfileCardState();
}

class _ClubProfileCardState extends State<ClubProfileCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:4.0, bottom: 4.0,),
      child: Container(
        width: 160,
        child: Card(
          elevation: 3,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),),
          color: kCardColor,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.clubName, style: kWelcomeCardHeading,),
                SizedBox(height: 2,),
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(widget.profileImage),
                ),
                SizedBox(height: 2,),
                Text(widget.tagline,),
                FollowButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
