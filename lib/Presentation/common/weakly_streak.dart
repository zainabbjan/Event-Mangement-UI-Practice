import 'package:first_prac/Data/Models/weeklydata.dart';
import 'package:flutter/material.dart';

class WeeklyStreak extends StatefulWidget {
  const WeeklyStreak({super.key});

  @override
  State<WeeklyStreak> createState() => _WeeklyStreakState();
}

class _WeeklyStreakState extends State<WeeklyStreak> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
              padding: EdgeInsets.all(5), child: Image.asset('asset/vec.png')),
          title: Text(
            'Weekly Streak',
            style: TextStyle(fontSize: 20, color: Colors.purple[700]),
          ),
          subtitle: Text('Die with memories, not dream'),
          trailing: Container(child: Image.asset('asset/Vector.png')),
        ),
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width * 1,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: check.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(check[index].name),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: check[index].ischecked
                              ? Colors.purple[700]
                              : Colors.grey),
                      child: Center(child:Icon(Icons.check, color:check[index].ischecked ? Colors.white: Colors.grey ,) ),
                    ),
                  ],
                );
              })),
        ),
      ],
    );
  }
}
