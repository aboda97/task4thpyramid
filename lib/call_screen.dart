import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Call Screen',style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}