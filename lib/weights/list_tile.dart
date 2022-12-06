import 'package:flutter/material.dart';

class ListTileInChat extends StatelessWidget {
  const ListTileInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
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
      title: Text('Darlene Steward',style: TextStyle(
        fontSize: 18,
      ),
        maxLines: 2,
        overflow:TextOverflow.ellipsis ,
      ),
      subtitle: Text('Please take alook at the machine',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text('At 3:00 PM'),
    );
  }
}
