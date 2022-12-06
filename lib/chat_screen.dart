import 'package:flutter/material.dart';
import 'package:task_4thpyramid/weights/container_chat.dart';
import 'package:task_4thpyramid/weights/grid_view.dart';
import 'package:task_4thpyramid/weights/text_and_circleavatar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            RowInChat(),
            SizedBox(height: 20.0,),
            GridViewInChat(),
            SizedBox(height: 20.0,),
            ContainerInChat(),
          ],
        ),
      ),
    );
  }
}