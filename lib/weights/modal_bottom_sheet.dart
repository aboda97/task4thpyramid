import 'package:flutter/material.dart';
import 'package:task_4thpyramid/chat_person.dart';
import 'package:task_4thpyramid/weights/list_tile.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
        //  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0))
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                   Navigator.pop(context);
                  },
                  child: Text('Recent Chats',style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Icon(Icons.search),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(child: Text('All Chats',style: TextStyle(
                    color: Colors.white,
                  ),)),
                ),
                Container(
                  height: 40.0,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(child: Text('Personal')),
                ),
                Container(
                  height: 40.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(child: Text('Work')),
                ),
                Container(
                  height: 40.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center(child: Text('Group')),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            ListView.builder(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
              return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ChatPerson.id);
                  },
                  child: ListTileInChat());
            }),
          ],
        ),
      ),

    );
  }
}
