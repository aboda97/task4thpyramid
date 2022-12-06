import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Personal Screen',style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}