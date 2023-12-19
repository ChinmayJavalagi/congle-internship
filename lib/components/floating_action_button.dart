import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: kPrimaryThemeColor,
      heroTag: 'uniqueTag',
      label: Row(
        children: [Icon(Icons.add), Text('Start a Room')],
      ), onPressed: () {  },
    );
  }
}
