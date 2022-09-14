import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      home: const InfoCard(),
    ));

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // total height and width
    Size size = MediaQuery.of(context).size;

    return (Scaffold(
        appBar: AppBar(
          title: const Text('Page title',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueAccent,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 80,
              child: DrawerHeader(
                
                // decoration: BoxDecoration(
                //   color: Colors.blueAccent,
                // ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ),
              ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(
              Icons.home, color: Colors.white
            ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
              Icons.settings, color: Colors.white
            ),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(children: <Widget>[
          Container(
            height: size.height * 0.45 - 60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://fullsuitcase.com/wp-content/uploads/2016/09/Oeschinensee-Kandersteg-Switzerland.jpg.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Expanded(
                          // height: 110,
                          // width: size.width,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                            Icon(
                              Icons.star_rate,
                              size: 30,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '41  ',
                              style: TextStyle(fontSize: 20),
                            )
                          ])),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Icon(Icons.phone, color: Colors.blueAccent),
                          Text('PHONE',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent)),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Icon(Icons.navigation, color: Colors.blueAccent),
                          Text('ROUTE',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent)),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Icon(Icons.share, color: Colors.blueAccent),
                          Text('SHARE',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandeerstag, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                    style: TextStyle(fontSize: 18, fontFamily: ''),
                  )
                ],
              ))
        ])));
  }
}
