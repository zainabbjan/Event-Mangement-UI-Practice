import 'package:first_prac/Data/Models/booksdata.dart';
import 'package:flutter/material.dart';


class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      
      width: double.infinity,
      child: ListView.builder(
          itemCount: booksdata.length,
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
                      booksdata[index].imageUrl,
                      height: 200,
                      width: 150,
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
                        child: Text(booksdata[index].title,style:  TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                         Text(booksdata[index].subtitle,style:  TextStyle(color: Colors.grey),),

                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}
