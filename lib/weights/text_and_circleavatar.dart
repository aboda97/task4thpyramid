import 'package:flutter/material.dart';

class RowInChat extends StatelessWidget {
  const RowInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Pinned Chats',style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
        ),),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/mark.jpg',),),
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0, right: 3.0),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 3.0,
                right: 3.0,
              ),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
