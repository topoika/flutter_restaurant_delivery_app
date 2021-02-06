import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                    width: 37,
                  ),
                  Expanded(
                      flex: 1,
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
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {}))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 5.0,
                    )
                  ],
                ),
              ),
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
            Divider(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.search),
                  Text('Search for Foods or Restaurants')
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Top Restaurants'),
                  SizedBox(width: 80),
                  FlatButton(
                    child: Text('see all'),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
