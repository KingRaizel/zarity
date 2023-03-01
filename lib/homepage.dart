// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last
import 'package:black_coffer/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),

            // Image radius
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
              },
              child: Image(
                image: AssetImage('assets/mobotp.png'),
              ),
            )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Afternoon',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text('Zarity')
          ],
        ),
        backgroundColor: Color.fromARGB(255, 4, 7, 38),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
                margin: EdgeInsets.only(left: 10, right: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.indigo[600],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 20.0,
                        lineWidth: 5.0,
                        percent: 0.7,
                        center: Text("70%"),
                        progressColor: Colors.green,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Complete profile to book consulation',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              ' Section Title 1',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3.1,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.indigo[600],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.iconpacks.net/icons/1/free-user-group-icon-296-thumb.png',
                              height: 50,
                              width: 50,
                              //alignment: Alignment.center,
                            ),
                            Text(
                              'CTA- 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3.1,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.indigo[600],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.iconpacks.net/icons/1/free-user-group-icon-296-thumb.png',
                              height: 50,
                              width: 50,
                              //alignment: Alignment.center,
                            ),
                            Text(
                              'CTA- 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width / 3.1,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.indigo[600],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://www.iconpacks.net/icons/1/free-user-group-icon-296-thumb.png',
                              height: 50,
                              width: 50,
                              //alignment: Alignment.center,
                            ),
                            Text(
                              'CTA- 1',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              ' Section Title 2',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Card(
                  //margin: EdgeInsets.only(left: 10, right: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.indigo[600],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Image.asset('assets/mobotp.png'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Zarity Company',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Sub Text Here',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  'Card Description',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 7,
                            ),
                            SizedBox(
                              width: 78,
                              height: 30,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('CTA'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue[700]),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                      side: BorderSide(
                                          color: Color.fromARGB(
                                              255, 120, 120, 120),
                                          width: 3.0),
                                    )),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 330,
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width / 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.indigo[600],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Card Title',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Image.asset('assets/mobotp.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Article 1',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Article description shown here',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              Text(
                                'with max two lines',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Image.asset('assets/mobotp.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Article 2',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Article description shown here',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              Text(
                                'with max two lines',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Image.asset('assets/mobotp.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Article 3',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Article description shown here',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              Text(
                                'with max two lines',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                        width: 100,
                        height: 30,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('View More'),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[700]),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                // side: BorderSide(
                                //     color: Color.fromARGB(255, 120, 120, 120),
                                //     width: 3.0),
                              )),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.indigo[600],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // do something
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.people_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // do something
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.explore,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // do something
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                // do something
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
