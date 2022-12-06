import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_4thpyramid/chat_person.dart';
import 'package:task_4thpyramid/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
          ),
          elevation: 0.0,
        )
      ),
      routes: {
        HomePage.id : (context)=> HomePage(),
        ChatPerson.id : (context)=> ChatPerson(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}

