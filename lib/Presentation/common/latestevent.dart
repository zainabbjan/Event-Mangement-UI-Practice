import 'package:flutter/material.dart';

class LatestEvent extends StatelessWidget {
  const LatestEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      
      width: double.infinity,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'asset/event.png',
                      height: 120,
                      width: 200,
                      fit: BoxFit
                      .cover,
                    ),
                  
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Music World Festival',style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                       
                          Row(children: [
                          Icon(Icons.calendar_month ,),
                          Text('12 Jan, 2022' , style: TextStyle(color: Colors.brown[900]),),
                        ],),
                        
                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}