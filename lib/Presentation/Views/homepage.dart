import 'package:first_prac/Presentation/Views/details_screen.dart';
import 'package:first_prac/Presentation/Views/page2.dart';
import 'package:first_prac/Presentation/Views/page3.dart';
import 'package:first_prac/Presentation/Views/page4.dart';
import 'package:first_prac/Presentation/common/tabs.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const DetailsScreen(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Tabs(onpresss: (() {
             setState(() {
               pageIndex = 0;
             });
           }), icon: Icons.home, name: 'home',color: 
          pageIndex ==0? Colors.purple : Colors.white,
textColor: pageIndex==0 ? Colors.white: Colors.white,
iconColor: pageIndex ==0?Colors.white :Colors.grey,

           ),
           Tabs(onpresss: (() => setState(() {
             pageIndex =1;
           })), icon: Icons.file_copy, name: 'Day',
          color:  pageIndex ==1? Colors.purple : Colors.white,
          textColor: pageIndex==1 ? Colors.white: Colors.white,
iconColor: pageIndex ==1?Colors.white :Colors.grey,),
           Tabs(onpresss: (() {
             setState(() {
               pageIndex = 2;
             });
           }), icon: Icons.calendar_month, name: 'Calender',
           color:  pageIndex ==2? Colors.purple : Colors.white,
           textColor: pageIndex==2 ? Colors.white: Colors.white,
iconColor: pageIndex ==2?Colors.white :Colors.grey,
           ),
          Tabs(onpresss: (() => setState(() {
            pageIndex = 3;
          })), icon: Icons.timer , name: 'Time',
          color:  pageIndex ==3? Colors.purple : Colors.white,
          textColor: pageIndex==3 ? Colors.white: Colors.white,
iconColor: pageIndex ==3?Colors.white :Colors.grey,)
          ],
        ),
      ),
    );
  }
}
