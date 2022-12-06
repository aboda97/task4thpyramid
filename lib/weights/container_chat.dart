import 'package:flutter/material.dart';
import 'package:task_4thpyramid/weights/list_tile.dart';
import 'package:task_4thpyramid/weights/modal_bottom_sheet.dart';

class ContainerInChat extends StatelessWidget {
  const ContainerInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0))
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                    ),
                      context: context,
                      builder: (context){
                    return ModalBottomSheet();
                  });
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
          ListTileInChat(),
          SizedBox(height: 5.0,),
          ListTileInChat(),
          SizedBox(height: 5.0,),
          ListTileInChat(),
        ],
      ),

    );
  }
}
