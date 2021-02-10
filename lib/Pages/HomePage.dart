import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(Icons.settings,color: Colors.white,),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 34,
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          DropdownButton(
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    'Select An Address',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text("First Item"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Second Item"),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                    child: Text("Third Item"), value: 3),
                                DropdownMenuItem(
                                    child: Text("Fourth Item"), value: 4)
                              ],
                              icon: Icon(
                                Icons.expand_more,
                                color: Colors.white,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ],
                      )),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {})),
                  Expanded(
                    child: FlatButton(
                      child: const Text('Sign out'),
                      textColor: Theme.of(context).buttonColor,
                      onPressed: () async {
                        // ignore: await_only_futures
                        final User user = await _auth.currentUser;
                        if (user == null) {
                          Scaffold.of(context).showSnackBar(const SnackBar(
                            content: Text('No one has signed in.'),
                          ));
                          return;
                        }
                        await _auth.signOut();
                        final String uid = user.uid;
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text(uid + ' has successfully signed out.'),
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(color: Colors.red[400]),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(50, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(22.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for Foods or Restaurants..',
                              hintStyle: TextStyle(color: Colors.white),
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                        )),
                    Expanded(
                        flex: 0,
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.mic, color: Colors.white),
                                onPressed: () {}),
                            VerticalDivider(
                              color: Colors.white,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                                onPressed: () {})
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Divider(
              height: 10,
              thickness: 5,
              color: Colors.black54,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(color: Colors.red[400]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Text('Top Restaurants')),
                  Expanded(
                      flex: 0,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'see all',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                height: 100,
                decoration: BoxDecoration(color: Colors.red[400]),
                child: SingleChildScrollView(
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 32,
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Text('Savanna')
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(color: Colors.red[400]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Text('My Fevourites')),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    //print('Card tapped.');
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: 400,
                      height: 300,
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.asset('assets/images/background.jpeg'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Savnna Hotel',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('Malaysian')
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Text('This is mine'),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
