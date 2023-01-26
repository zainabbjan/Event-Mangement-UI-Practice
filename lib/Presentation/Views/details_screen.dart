import 'package:first_prac/Presentation/common/book.dart';
import 'package:first_prac/Presentation/common/latestevent.dart';
import 'package:first_prac/Presentation/common/latestnews.dart';
import 'package:first_prac/Presentation/common/upcommingevent.dart';
import 'package:first_prac/Presentation/common/weakly_streak.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black,),
          onPressed: (() {
            key.currentState?.openDrawer();
          }),
        ),
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.purple[700],
            ),
            Text(
              'Lahore, Pakistan',
              style: TextStyle(color: Colors.purple[700]),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.logout_sharp,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(
        child: Text('hello'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'asset/fes.jpg',
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                        left: 25,
                        top: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Music Festival',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'First ever live event in the ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'country',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 35),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Center(
                                  child: Text(
                                'Learn More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Upcoming event',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              UpCommingEvent(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Music Festival',
                    style: TextStyle(fontSize: 20, color: Colors.purple[700]),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text('Lahore'),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Tikkun haklali streak',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
              WeeklyStreak(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Countinue reading',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Books(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Latest news',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              LatestNews(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Latest event',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              LatestEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
