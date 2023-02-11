import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName='/ProfileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 51, 180, 209),
        leading: Icon(Icons.arrow_back),
        title: Text(
          "profile",
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
          children:[ SafeArea(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // avatar(),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        child: ClipPath(
                          clipper: Customshape(),
                          child: Container(
                            height: 250,
                            color: Color.fromARGB(255, 51, 180, 209),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.amber,
                          backgroundImage: AssetImage('images/profile.png'),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),

                  Container(
                    child: Text(
                      'jenny patel',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text('Edit profile'),
                  //   clipBehavior: Clip.antiAlias,

                  // ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Container(
                        child: Card(
                          margin: EdgeInsets.all(15),
                          child: ListTile(
                            leading: Icon(
                              Icons.apartment,
                              size: 35,
                            ),
                            title: Text(
                              'Designation',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              'Empoyee',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          margin: EdgeInsets.all(15),
                          child: ListTile(
                            leading: Icon(
                              Icons.call,
                              size: 35,
                            ),
                            title: Text(
                              'Mobile Number',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text('93137*****'),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          margin: EdgeInsets.all(15),
                          child: ListTile(
                            leading: Icon(
                              Icons.email,
                              size: 40,
                            ),
                            title: Text(
                              'Email ID',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text('patel*****@gmail.com'),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          margin: EdgeInsets.all(15),
                          child: ListTile(
                            leading: Icon(
                              Icons.calendar_month,
                              size: 40,
                            ),
                            title: Text(
                              'joined date',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text('23 march 2018'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),]
      ),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}