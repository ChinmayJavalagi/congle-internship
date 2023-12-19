import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

import '../buttons/follow_button.dart';

class CategoryCard extends StatefulWidget {
  final String category;
  final String iconAsset;
  final String activeRooms;


  CategoryCard({required this.category, required this.iconAsset, required this.activeRooms});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top:12.0, bottom: 4.0, right: 10.0, left:4.0),
      child: Container(
        width: 190,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.category, style: kRoomHeaderTextStyle,),
                Align(alignment: Alignment.centerLeft, child: Image.asset(
                  widget.iconAsset, // Use the asset path
                  width: 40, // Set the desired width
                  height: 40, // Set the desired height
                ),),
                Text("${widget.activeRooms} active rooms",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
