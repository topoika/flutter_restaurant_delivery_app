import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              height: 40,
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Row(
                    children: [
                      Text('Set an adress'),
                      Icon(Icons.arrow_downward_outlined)
                    ],
                  ),
                  Icon(Icons.restaurant_menu_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
