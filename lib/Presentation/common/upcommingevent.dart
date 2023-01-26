
import 'package:flutter/material.dart';
class UpCommingEvent extends StatelessWidget {
  const UpCommingEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          date: '14',
          tile: 'Day',
        ),
       
        CustomContainer(tile: 'Hours', date: '34'),
       
        CustomContainer(tile: 'Minutes', date: '49'),
        
        CustomContainer(tile: 'Sec', date: '23')

      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  String tile;
  String date;
  CustomContainer({required this.tile, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
        
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey.withOpacity(0.1)),
        child: Column(
          children: [
            Text(
              tile,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              date,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ));
  }
}
