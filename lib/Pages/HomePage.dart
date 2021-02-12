import 'package:chowcub/theme.dart';
import 'package:chowcub/widgets/tiles_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageUrl = [
    'assets/images/rest1.png',
    'assets/images/rest2.png',
    'assets/images/rest3.png',
    'assets/images/rest4.png',
    'assets/images/rest5.png',
    'assets/images/rest6.png',
    'assets/images/rest7.png',
  ];

  List<String> iconUrl = [
    'assets/images/logo1.png',
    'assets/images/coffee.png',
    'assets/images/pizza.png',
    'assets/images/drinks.png',
    'assets/images/chicken.png',
    'assets/images/burger.png',
    'assets/images/cake.png'
  ];

  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 30, 20, 0),
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(color: MyColors.primaryColor),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            //Drawer Menu
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          child: Text(
                            'Delivery  To',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 28,
                                fontFamily: MyColors.primaryFont),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
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
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
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
                                  fontSize: 19,
                                  color: Colors.black87,
                                )),
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
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              height: 120,
              decoration: BoxDecoration(color: MyColors.backColor),
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.start,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    restaurantsTiles(imageUrl[0], 'Glovo'),
                    restaurantsTiles(imageUrl[1], 'McDonalds'),
                    restaurantsTiles(imageUrl[2], 'Jumia'),
                    restaurantsTiles(imageUrl[3], 'McDonalds'),
                    restaurantsTiles(imageUrl[4], 'McDonalds'),
                    restaurantsTiles(imageUrl[5], 'McDonalds'),
                    restaurantsTiles(imageUrl[6], 'Ukrine'),
                  ],
                ),
              ),
            ),
            Container(
              color: MyColors.backColor,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 35,
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
              color: MyColors.backColor,
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              height: 105,
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.start,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    categoriesRow(iconUrl[0], 'All'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[1], 'coffee'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[2], 'Pizza'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[3], 'Drinks'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[4], 'Chicken'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[5], 'Burger'),
                    SizedBox(
                      width: 20,
                    ),
                    categoriesRow(iconUrl[6], 'Cake'),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: MyColors.backColor,
              height: 35,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Products Ordered',
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
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              height: 200,
              decoration: BoxDecoration(color: MyColors.backColor),
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.start,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    dishesTiles(imageUrl[0], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[1], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[2], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[3], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[4], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[5], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                    dishesTiles(imageUrl[6], 'Fried Noodles & Fries',
                        'Seafoods & Fries'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: MyColors.backColor,
              height: 35,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Fevourite Restaurants',
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
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              height: 200,
              decoration: BoxDecoration(color: MyColors.backColor),
              child: SingleChildScrollView(
                dragStartBehavior: DragStartBehavior.start,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    favoriteRestaurantsTiles(
                        imageUrl[0], 'McDonalds', "\$\$\$\$", 'USA Amstantdam'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(
                        imageUrl[1], 'Pronto', '\$\$\$', 'Nairobi Moi Avenue'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(
                        imageUrl[2], 'Triple f', '\$\$\$', 'Kitengela Kajiado'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(
                        imageUrl[3], 'Pine Breeze', '\$', 'Athi River Lukenya'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(imageUrl[4], 'Cafeteria',
                        '\$\$\$\$', 'Athi River Lukenya'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(imageUrl[5], 'Wiilrave',
                        '\$\$\$\$', 'Athi River Lukenya'),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteRestaurantsTiles(
                        imageUrl[6], 'Savannah', '\$\$', 'Olulunga Narok'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
