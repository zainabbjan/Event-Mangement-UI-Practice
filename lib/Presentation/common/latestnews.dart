
import 'package:flutter/material.dart';


class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
        return SizedBox(
           height: 150,
      width:  300,
          child: Card(
            
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'asset/la.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                    left: 20,
                    right: 5,
                    top: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'life as a digital nomad - what exactly is that?',
                          style: TextStyle(color: Colors.brown[900], fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Icon(Icons.calendar_month ,),
                            Text('12 Jan, 2022' , style: TextStyle(color: Colors.brown[900]),),
                          ],),
                        )
                      ],
                    )),
              ],
            ),
          ),
        );
      })),
    );
  }
}
