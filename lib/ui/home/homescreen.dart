import 'package:flutter/material.dart';
import 'package:todo2/ui/home/listtodotab.dart';
import 'package:todo2/ui/home/settingtodotab.dart';

class home extends StatefulWidget {
static const String routename='home';

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('route todo') ,
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,width: 4
          ),
        ),
        child:Icon(Icons.add) ,
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: currentindex,
          onTap:(index){
            currentindex=index;
            setState(() {

            });

          },
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(label: '',icon: Icon(Icons.list)),
            BottomNavigationBarItem(label: '',icon: Icon(Icons.settings)),
          ],



        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,

      ),
      body: tabs[currentindex],
    );
  }
  List<Widget>tabs=[
    listtodo(),
    settingtab(),
  ];
}
