import 'package:chowcub/theme.dart';
import 'package:flutter/gestures.dart';
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
      backgroundColor: MyColors.backColor,
      body: Container(
        //padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(color: MyColors.primaryColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'DELIVERING  TO',
                      style: TextStyle(color: Colors.black87),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        DropdownButton(
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  '76A Eighn Avenue, New York, US',
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
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0, color: MyColors.primaryColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                icon: Icon(Icons.search_outlined),
                                hintText: 'Search for Foods or Restaurants...',
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: MyColors.primaryFont)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.filter_3_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 15, 0, 20),
                height: 140,
                decoration: BoxDecoration(color: MyColors.backColor),
                child: SingleChildScrollView(
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Stack(children: [
                        Container(
                          height: 170,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1551632436-cbf8dd35adfa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHJlc3RhdXJhbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Fuck off',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                          height: 170,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                          height: 170,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 330,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1552566626-52f8b828add9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'McDonalds',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: MyColors.primaryFont,
                                    fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: MyColors.primaryFont,
                          fontSize: 20),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: InkWell(
                      onTap: () {
                        //
                      },
                      child: Row(
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(
                                fontFamily: MyColors.primaryFont,
                                color: MyColors.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.double_arrow_rounded,
                            size: 15,
                            color: MyColors.primaryColor,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.start,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/logo1.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'All',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/splash1.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Coffee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/drinks.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Drinks',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/chicken.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Chicken',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/burger.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Burger',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/images/cake.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Cakes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: MyColors.primaryFont),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
