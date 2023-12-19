import 'package:flutter/material.dart';

class OverlappingCircleAvatar extends StatelessWidget {
  List<String> randomImages = [
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0, left:12.0, right:12.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < randomImages.length; i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 0),
                child: Align(
                  widthFactor: 0.5,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        randomImages[i],
                      ),
                    ),
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              child: Align(
                widthFactor: 0.5,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300]!, // You can customize the background color
                  child: Text(
                    '20+',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
