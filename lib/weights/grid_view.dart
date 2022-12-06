import 'package:flutter/material.dart';

class GridViewInChat extends StatelessWidget {
  const GridViewInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 2.0,
        ),
        itemCount: 4
        , itemBuilder: (context, index){
          return Card(
            elevation: 7.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.blue,),
                  SizedBox(height: 10.0,),
                  Row(
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
                      SizedBox(width: 15.0,),
                      Flexible(
                        child: Text('Darlene Steward',style: TextStyle(
                          fontSize: 18,
                        ),
                          maxLines: 2,
                          overflow:TextOverflow.ellipsis ,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward),
                      SizedBox(width: 5.0,),
                      Flexible(
                        child: Text('Please take alook at the machine',
                        maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
    }
    );
  }
}
