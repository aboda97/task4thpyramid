import 'package:flutter/material.dart';
import 'package:task_4thpyramid/weights/chat_item.dart';

class ChatPerson extends StatelessWidget {
   ChatPerson({Key? key}) : super(key: key);
  static String id = 'ChatPerson';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage:AssetImage('assets/images/mark.jpg',),),
            SizedBox(width: 5.0,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Darlene Steward',style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Text('7 online, from 12 People', style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),)
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_camera_back_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
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
                        ChatItem(),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Send Message',
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send,
                      color: Colors.blue,
                    ),
                    onPressed: (){},
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                  )
              ),
            ),
          )
        ],
      )

    );
  }
}
