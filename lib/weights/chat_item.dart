import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            )),
        child: Text(
          'Lorem ipsum dolor sit amet, '
          'consectetur adipiscing elit,'
          ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ' Ut enim ad minim veniam, '
          'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
