import 'package:flutter/material.dart';
import 'package:task_4thpyramid/call_screen.dart';
import 'package:task_4thpyramid/chat_screen.dart';
import 'package:task_4thpyramid/personal_screen.dart';
import 'package:task_4thpyramid/time_screen.dart';
import 'package:task_4thpyramid/weights/container_chat.dart';
import 'package:task_4thpyramid/weights/grid_view.dart';
import 'package:task_4thpyramid/weights/list_tile.dart';
import 'package:task_4thpyramid/weights/text_and_circleavatar.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
   static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  List screens = [
    ChatScreen(),
    TimeScreen(),
    CallScreen(),
    PersonalScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 30.0),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,
            //color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_outlined,
              //color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_calling_3_sharp,
             // color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin,
             // color: Colors.grey,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}

/*
Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://www.bing.com/images/search?view=detailV2&ccid=n60XrHSu&id=CADC0509974438238ACC83803980AD6B86B132CC&thid=OIP.n60XrHSu6LiID9tmdmdMAgHaFj&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.9fad17ac74aee8b8880fdb6676674c02%3frik%3dzDKxhmutgDmAgw%26riu%3dhttp%253a%252f%252fwww.business-opportunities.biz%252fwp-content%252fuploads%252f2013%252f11%252fsteve_jobs.jpg%26ehk%3dsJ%252bHnk05IEvTslnzxDiyD0KK2tvLQBcxfTDVFUi21i8%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=768&expw=1024&q=steve+jobs&simid=608034547745244468&FORM=IRPRST&ck=3FC3566A0D5F68E5BF60BCFE7388574C&selectedIndex=13&ajaxhist=0&ajaxserp=0'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3.0, right: 3.0),
                child: CircleAvatar(
                  radius: 9.0,
                  backgroundColor: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 3.0,
                  right: 3.0,
                ),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
 */