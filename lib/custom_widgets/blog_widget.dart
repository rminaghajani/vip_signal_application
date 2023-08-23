import 'package:flutter/material.dart';

Widget getBlogWidget({
  required String imageName,
  required String title,
  required String buyPrice,
  required String sellPrice,
}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image(image: AssetImage('images/$imageName')),
      ),
      SizedBox(height: 10),
      Text(
        '$title',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.attach_money,
            size: 20,
            color: Colors.green,
          ),
          Text(
            'Buy price : $buyPrice',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.sell,
            size: 18,
            color: Colors.red,
          ),
          SizedBox(width: 5),
          Text(
            'Sell price : $sellPrice',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      SizedBox(height: 10),
      Container(
        width: 250,
        child: Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ),
      SizedBox(height: 10)
    ],
  );
}
