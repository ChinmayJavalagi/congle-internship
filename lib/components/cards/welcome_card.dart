import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeCard extends StatefulWidget {
  const WelcomeCard({Key? key}) : super(key: key);

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  bool isClosed = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isClosed,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          elevation: 3,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),),
          color: kCardColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0, top: 10.0, left: 16.0,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Welcome to Congle Rooms', style: kWelcomeCardHeading,),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset('assets/icons/wave.png', height: 24.0, width: 24.0,),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        isClosed=true;
                      });
                    }, icon:Icon(Icons.close)),
                  ],
                ),

                const Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis '),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
