import 'package:flutter/material.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Time Screen',style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
