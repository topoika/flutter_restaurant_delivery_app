import 'package:chowcub/theme.dart';
import 'package:flutter/material.dart';

Widget homeCategoriesTile(
    String imgUrl, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 28.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(userName)),
                    if (seen)
                      Icon(
                        Icons.check_circle,
                        size: 18.0,
                        color: Colors.green,
                      ),
                    if (!seen)
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey,
                        size: 18.0,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
