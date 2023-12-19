import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

import '../buttons/follow_button.dart';
import '../buttons/join_now_button.dart';
import '../overlapping_circle_avatar.dart';

class RoomDetailsCard extends StatefulWidget {
  final String heading;
  final String clubType;
  final String about;

  RoomDetailsCard({required this.heading, required this.clubType, required this.about});

  @override
  State<RoomDetailsCard> createState() => _RoomDetailsCardState();
}

class _RoomDetailsCardState extends State<RoomDetailsCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),),
        color: kCardColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.heading, style: kRoomHeaderTextStyle,),
              Text(widget.clubType, style: kClubTypeTextStyle,),
              Text(widget.about),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  OverlappingCircleAvatar(),
                  JoinNowButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
