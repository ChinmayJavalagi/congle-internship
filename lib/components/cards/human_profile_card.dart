import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

import '../buttons/follow_button.dart';

class HumanProfileCard extends StatefulWidget {
  final String name;
  final String followers;
  final String profileImage;

  HumanProfileCard({required this.name, required this.followers, required this.profileImage});

  @override
  State<HumanProfileCard> createState() => _HumanProfileCardState();
}

class _HumanProfileCardState extends State<HumanProfileCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0, bottom: 4.0,),
      child: Container(
        width: 160,
        child: Card(
          elevation: 3,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),),
          color: kCardColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: NetworkImage(widget.profileImage),
                ),
                SizedBox(height: 2,),
                Text(widget.name, style: kWelcomeCardHeading,),
                SizedBox(height: 2,),
                Text('${widget.followers} followers',),
                FollowButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
