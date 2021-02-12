import 'package:chowcub/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget categoriesRow(String iconUrl, String categoryName) {
  return Container(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Image.asset(iconUrl),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          categoryName,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: MyColors.primaryFont),
        )
      ],
    ),
  );
}

Widget restaurantsTiles(String imgUrl, String restaurantName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              )),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              restaurantName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: MyColors.primaryFont),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dishesTiles(String imgUrl, String dishName, String dishCategory) {
  return Container(
    height: 400,
    width: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        Container(
          height: 120,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                dishName,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: MyColors.primaryFont),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.house,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      dishCategory,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: MyColors.primaryFont,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget favoriteRestaurantsTiles(String imgUrl, String restaurantName,
    String restaurantPriceCategory, String restaurantLocation) {
  return Container(
    height: 400,
    width: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          height: 120,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                restaurantName,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: MyColors.primaryFont),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.money,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      restaurantPriceCategory,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: MyColors.primaryFont,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      restaurantLocation,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: MyColors.primaryFont,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
